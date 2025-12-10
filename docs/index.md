# Experiments with AI Coding Assistant

Here is the documentation (written by myself the human; not by the AI). <br/><br/>
the intent for this exercise is to engage into a journey of understanding how to work with AI Coding Agents and how to use it effectively as a coding assistant to boost productivity.

---

## tools used:
1. Windsurf Cascade: ... [AI_Coding_Tools.md](AI_Coding_Tools.md) 
2. Git -- version control; capture changes/ notes every step of the way
3. MkDocs -- documentation is very important.. note it down first; keep refining subsequently
4. Vercel and GitHub Pages -- shareable presentation of summary is also needed 

---

## what i learned so far from my first experiment:
1. plan your work ... [initial plan](prompt_pad.md)
2. break it down into small tasks
3. use  AI to first do a thorough analysis of the codebase... [Analysis of current codebase](First_Analysis.md)
4. **review that analysis yourself**
5. sequence tasks and assign them to the AI one by one
6. incrementally capture successfully compiling code in version-control
7. **at each step, compile code, run tests and ensure they are passing before committing**
8. **do execute the code and see if it runs successfully as well.**
9. at each step, document the changes in markdown files; commit docs as well
10. organize documentation in a way that is easy to navigate and understand; eg mkdocs
11. once desired changes and enhancements are achieved, ask AI to do a thorough code review and document that code review, in terms of issues caught, suggestions for improvements, etc.
12. in my earlier version of code in 2017, github showed code composition as 97% java... in this code its 33% java, 57% HTML (due to markdown files)
13. another observation: **i had been specifying in markdown; and reviewing at each step; and then committing at each step**
14. ... may be more as i learn :) 

---

* [First Experiment](Experiment01.md): migrate legacy app to new tech stack using **prompts**
* [Experiment 2](experiment02/README.md): create new Weather App using **prompts**
* [Experiment 3](experiment03/README.md): create new Weather App using **Speckit**
* [Experiment 4](experiment04/README.md): create new Question Answer App using **speckit** using Claude Opus 4
* [Experiment 5](experiment05/README.md): create another QA App using **speckit** using GPT 5.1 Reasoning
* ... keep practising more

---

## Developer Workflow just for this mkdocs site:

### Workflow using GitHub Pages
1. i am using an explicit repo that only has mkdocs files
2. sync up and bring larger markdown files from the main repo; these are the ones worked with Windsurf AI
3. update hand-crafted markdown files as needed
4. build and run the site locally to see if it looks good
5. if needed make changes to the markdown files and repeat steps 2-4
6. when satisfied, commit the changes
7. push the changes to the remote repository

    a. i am next copying the compiled pages from "site" folder to another repo

    b. using a specific repo for GitHub Pages: amitrajpurkar.github.io
    
    c. once i copy over updated pages here, commit and push to that repo

8. GitHub Pages is then updated automatically

```bash
cd mkdocs-repo 
# update hand-crafted markdown files as needed
# sync up and bring larger markdown files from the main repo; these are the ones worked with Windsurf
mkdocs build --clean
mkdocs serve

diff -r site ./../../amitrajpurkar.github.io
cp -r site/* ./../../amitrajpurkar.github.io/

cd ./../../amitrajpurkar.github.io
git status
git add .
git commit -m "updated docs"
git push

# github pages.. need to get this working
# gh pages -b gh-pages

```


---

## key takeaways

1. AI tools are here to stay and will continue to improve
2. As a software programmer, there is a need to have our own AI Coding Assistant
3. at first we need to baby-sit the AI Coding Assistant and develop/ evolve our own workflows
4. Within & across industries, programmers at large are producing code using AI tools
5. We need to understand and decipher the code produced by AI tools
6. Observability, Testing against specs, Code Reviews, Domain knowledge, are the key to success
7. 

## for further research
8. TBD... more to be researched, experimented
    * Spec-Kit: https://github.com/github/spec-kit
        * tried this... very valuable: sequence is constitution, specify, plan, task,
        * learn how to use this tool effectively.
        * another seq: specify, clarify, plan, task, analyze, 
        * use spec-kit not just for new code, but also for existing code
        * try to use spec-kit to derive the spec from the code
        * known CONSTRAINTS: this is meant for Python apps using UV (from Astral).. not for Java.
        * ref.. https://den.dev/blog/
        * ref.. https://github.blog/ai-and-ml/generative-ai/spec-driven-development-with-ai-get-started-with-a-new-open-source-toolkit/
    * Agents.md: https://agents.md
    * Specification driven development:
    * for Windsurf: use rules, workflows, .... https://docs.windsurf.com/windsurf/cascade/memories#rules
    * one website framework... https://gohugo.io/documentation/


---

**Last Updated:** November 10, 2025  
**Project:** Spring Boot API with Circuit Breaker  
**Version:** 3.2.10
