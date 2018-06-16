# Copyright 2016 Nicolas M. Thiéry ...
#
# ...

author=MPI Info 111's team
name=deviner la sortie
title=Deviner la sortie
type=sandbox

# chargement des fichiers utiles
@/template/utils.py
@/template/plutils.py
@/template/graderCpp.py

form=@/template/form/editorform.html

text==
Exécuter pas à pas le programme suivant et saisir ce que vous prévoyez
qu'il affiche.
==

before==
title=title+": "+topic

import random, re
def code_randomiser():
    d={}
    d['X'],d['Y'],d['Z'] = random.sample('XYZ',3)
    d['I'],d['J'],d['K'],d['N'] = random.sample('IJKN',4)
    def randomize_code(code):
        return re.sub('|'.join(d.keys()), lambda i: d[i.group()], code)
    return randomize_code()

code = utils.code_randomizer()(code)

==

grader==
import io, plutils, json, graderCpp
exo = plutils.getpldic()
try:
    user_solution = io.open("student.py").read()
except FileNotFoundError:
    user_solution = "" # Temporary work around: student.py does not get created if the input is empty
response = graderCpp.grader_expected_output(exo,user_solution)
print(json.dumps(response))
==




