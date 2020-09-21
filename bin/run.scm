(use-modules (opencog) (opencog nlp) (opencog nlp relex2logic) (opencog nlp chatbot) (opencog openpsi) (opencog ghost) (opencog ghost procedures))

(ghost-af-only #f)
(ghost-set-sti-weight 0)

(ghost-parse-file "../concepts-eddie.ghost")
(ghost-parse-file "../introduction-eddie.ghost")
(ghost-parse-file "../awareness_practice_1.ghost")
(ghost-parse-file "../awareness_practice_2.ghost")
(ghost-parse-file "../listening.ghost")
(ghost-parse-file "../closing.ghost")
(ghost-parse-file "../menu.ghost")
(load "../lai-scheme-functions.scm")
