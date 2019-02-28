# import re
from .base import Base
from pybtex import database


class Source(Base):
    def __init__(self, vim):
        super().__init__(vim)
        self.name = 'deoplete-citation.vim'
        self.mark = '[citation]'
        self.input_pattern = (r'@')
        self.filetypes = ['markdown']

    # def get_complete_position(self, context):
    #     m = re.search(r'\w*$', context['input'])
    #     return m.start() if m else -1

    def gather_candidates(self, context):
        bib_filepath = '~/.pandoc/library.bib'
        bib_file = database.parse_file(bib_filepath, bib_format='bibtex')
        bib_entries = bib_file.entries
        citation_keys = bib_entries.keys()
        titles = [bib_entries[k].fields['title'][1:-1] for k in citation_keys]
        absts = [bib_entries[k].fields['abstract'] if 'abstract' in bib_entries[k].fields else "" for k in citation_keys]
        kind = []
        for k in citation_keys:
            if 'year' in bib_entries[k].fields:
                tmp = "(" + bib_entries[k].fields['year'] + ") "
            if 'journal' in bib_entries[k].fields:
                tmp += bib_entries[k].fields['journal']
            kind.append(tmp)
        citation = []
        for k, t, a, j in zip(citation_keys, titles, absts, kind):
            citation.append({'word': k,
                             'abbr': k + ": " + t,
                             'info': a,
                             'kind': j})
        return citation
