# Experiments with AI Coding Assistant

Here is the documentation (written by myself the human; not by AI). <br/><br/>
the Quest:  **to engage into a journey of understanding how to work with AI Coding Agents and how to use it effectively as a coding assistant to boost productivity.**

<br/><br/><br/>
noting down the intent of this documentation:

* highlight the importance of agents, specs, skills.. "the why"
* show using my experiments the way these helped.. "the how"
* separate the two: 
    * "project-needs" (functional requirements) vs 
    * "understand-new-tools-and-usage" (understand best practices for new AI tools)

---

## key takeaways


(the why...) 

| **Artifact**| **Controls**| **Applies to**| **Lifespan**|
| ---- | ---- | ---- | ---- |
| AGENT profile| Behavior & discipline| AI agent| Reusable, long-lived|
| Skills| Capability & execution| Tasks| Reusable, long-lived|
| Specifications ( ~~SpecKit~~ )| Intent & correctness| Features / systems| Per change/ project|

<br/><br/><br/>
(the what...) 

| **Dimension**| **AGENT.md (profile)**| **Specs**| **Skills**|
| ---- | ---- | ---- | ---- |
| insight | defines how the AI behaves| defines what is being built | defines what the AI can do |
| Primary purpose| Control agent behavior| Control development process| Control task execution|
| Scope| Entire repo| Individual feature / system| Individual task|
| Temporal role| Always-on| Lifecycle-based| Reusable|
| Changes often?| Rarely| Frequently| less often|
| Audience| AI agent| Humans + AI| Humans + AI|
| Enforces| Style, rules, discipline| Scope, intent, acceptance| Capability, execution|


---

<br/><br/><br/>

## Next level down... "using AI Tools"

1. collection of pointers/ references for agents.md; skills; workflows
2. definition / description of what is what when using AI Code Assistants.
3. understanding the new SLDC when doing AI-assisted development
3. idea is as/when you start a new project, working with AI tools, 
    - how should you setup your machine/ environment
    - how should you structure your project
    - how should you plan your project
    - how should you design your project
    - which skill-set you must always have for your typical profile.
    - what are the commands, their sequence, and when to use them.
    - how to make yourself fast as well as productive and efficient.


## some definitions to help clarify

| Word | Definition |
|---|---|
| Project | a temporary, structured endeavor to create, maintain, or enhance a software product or system |
| SDLC | Software Development Lifecycle |
| Activity | a specific, actionable task within the SDLC that contributes to the creation, modification, or maintenance of a software product |
| Task | a sufficiently defined, complete unit of work that delivers a specific, tangible change, typically designed to be accomplished by one person within one day |
| Workflow | a structured, step-by-step methodology, or plan, used by teams to build, test, and deploy applications, often referred to as SDLC |
| Skill | a technical or professional capability—ranging from programming languages to problem-solving—used to design, build, test, and maintain computer applications and systems |
| Rules | set of explicit or understood regulations or principles governing conduct within a particular activity or group of activities |
| Memory | the part of a computer in which data or program instructions can be stored for retrieval |
| Constitution | a body of fundamental principles or established precedents according to which a software program/code is acknowledged to be governed |

---

<br/><br/><br/>
(the how...)

## Experiments: (these are growing)

| Name | Description | Status | Takeaways |
|---|---|---|---|
| [First Experiment](FirstPlan.md) | migrate legacy app to new tech stack using **prompts** | ✅ | how planning helps; no use of specs |
| [Weather app](experiment02/README.md) | create a Weather App using **prompts** | ✅ | more thoughtful planning |
| [Weather app 2](experiment03/README.md) | create similar Weather App using **SpecKit** | ✅ | SpecKit helps in better scoping and execution |
| [Q&A app](experiment04/architecture.md) | create a Question Answer App using **SpecKit** using Claude Opus 4 | ✅ | another thoughtful planning |
| [Q&A app 2](experiment05/architecture.md) | create another QA App using **SpecKit** using GPT 5.1 Reasoning | ✅ | better execution with SpecKit |
| [Restaurant EDA](06restaurants/architecture.md) | explore restaurant data using **SpecKit** | ⚠️ | better scoping and execution with SpecKit |
| [Mosquito Risk EDA](07geoemerge/architecture.md) | explore mosquito risk data using **AGENTS.md; SpecKit; skills** | ✅ | better scoping and execution with SpecKit, multiple revisions |
| [Resource Dessert](08rdessert/architecture.md) | experiment from a data hackathon **AGENTS.md; SpecKit; skills** | ✅ | better scoping and execution with SpecKit, multiple revisions |
| [dashboard](static/car-dashboard.html) | have Claude Cowork read, analyze data-logs-in-excel saved in google-drive to create a dashboard | ✅ | prompt based approach; still learning Cowork |
| ... | keep practising more... | xx | xx |


---


## SPECS, SDD, Specifications Driven Development
* there is no hard/ fast directions/ guidelines on which workflows are best -- you can develop your own
* industry standard is missing; different companies have different techniques to address SDD
* [SpecKit](https://github.com/github/spec-kit): a good starting point for using readily available workflows; 
    * workflow: **Constitution → Specify → Clarify → Plan → Task → Analyze → Implement → Review**
    * SpecKit runs as standalone tool; runs from CLI; 
    * SpecKit provides its templates to different AI Agents.
* from Cursor [RIPER-5](https://github.com/johnpeterman72/CursorRIPER); 
    * workflow: **Research → Innovate → Plan → Execute → Review**
* [Agent-Skills](https://github.com/addyosmani/agent-skills)
    * workflow: **Spec → Plan → Build → Test → Review → Ship**
* so what is a typical developer workflow ?
    * you start with specifications, 
    * clarify the specs and ideate on these specs, refine specs if possible, 
    * then create a plan for your project, 
    * then break down the plan into tasks, 
    * then have AI Agent implement the tasks; 
    * and finally verify/ validate the output of AI Agent;


## AGENTS, CONSTITUTION, RULES
* the overarching rules that AI Agent must follow -- this defines the behavior of the AI Agent, its profile, what role is it playing.
* these can be re-used across multiple projects
* We can have one AGENTS.md file for each type of Software Developer: Java, Python, Java-Springboot, React, etc.
* You can hand craft an AGENTS.md or even have AI-Agent generate it for you.
* AI Coding Agents like Windsurf/ Cascade refer to AGENTS.md as Constitution
* AI Coding Agents like Claude Code refer to AGENTS.md as CLAUDE.md
* scopes: Global (<user-home>/.claude/...), Project, Task


## SKILLS, WORKFLOWS
* Reference points to begin with
    * [https://agentskills.io/home](https://agentskills.io/home)
    * [https://skills.sh](https://skills.sh)
    * [https://skillzwave.ai/browse/development/](https://skillzwave.ai/browse/development/)
* A Skill relates to a specific task that the AI Agent must perform as a software developer.
* like any other tool -- **RTFM: please read the docs to understand how to use each skill.**
* Claude specific
    * [https://claude.com/plugins](https://claude.com/plugins)
    * [https://claudemarketplaces.com/skills](https://claudemarketplaces.com/skills)
    * [https://github.com/addyosmani/agent-skills](https://github.com/addyosmani/agent-skills)
    * [https://github.com/JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman)
* AI Coding Agents like Windsurf/ Cascade refer to Skills as Workflows.
* install Skills under different scopes: Global (<user-home>/.claude/skills/...), Project

---

## SpecKit vs Spec2Cloud — Quick Summary

| Dimension | SpecKit | Spec2Cloud |
|---|---|---|
| **Maintainer** | GitHub (Microsoft) | Microsoft EMEA App GBB |
| **Open Source** | ✅ MIT | ✅ MIT |
| **Stars** | 95k+ (mature) | ~94 (early-stage) |
| **AI Agents** | 30+ supported | Primarily GitHub Copilot |
| **Cloud Dependency** | None — cloud-agnostic | Azure-required for deploy |
| **On-Prem Support** | ✅ Yes | ❌ Not a primary use case |
| **Offline / Air-gapped** | ✅ Explicitly supported | ⚠️ Partial (spec phases only) |
| **Deployment Target** | Any / developer's choice | Azure |
| **Extensibility** | 80+ community extensions | 46 built-in skills |
| **Best For** | Any stack, any cloud, any AI | Azure + Copilot teams |

---

## Journal Notes

* DEVELOPER WATCHOUTS:
    * Non-negotiable: AI amplifies skills; it does not replace Developer’s skills
    * Architectural thinking: decompose the system, decide which component, library or design pattern suites best for the problem at hand; think about transaction boundaries; interface contracts
    * Specify the problem: translate business needs into technical intent; what should be the constraints; what should be the acceptance criteria 
    * Review, Verification: Because AI codes fast, you must validate faster; spot complexity; identify security holes; spot clever but wrong solutions; iterate through each step (its not fire-and-forget)
    * Most imp — your core development skills: if you are a Java developer, you must know Java thoroughly; you should not work with half-baked-knowledge
    * Racing to code / touching delivery-finish-line is not the goal — breaking down the specification; getting requirements right; understanding domain knowledge that’s the key, before you touch or start coding; this is not a one-man-job; a small team can ideally make the engineering practice a reality
* SOME THOUGHTS:
    * AI is still evolving at a very rapid pace.. standardization in coding practice using AI is in its infancy -- AI tools are here to stay and will continue to improve
    * As a software programmer, there is a need to have our own AI Coding Assistant -- need to try the tools and experiment with different approaches as they surface.
    * If we don’t use concepts like Agent.md, Specs, Skills, we will babysit with AI for a long time and no consistency can be reached; we need to bring repeatability, predictability into software engineering to make production code reliable; Feeding the AI Agents with these three will help get us there
    * Within & across industries, programmers at large are producing code using AI tools -- We need to understand and decipher the code produced by AI
    * Observability, Testing against specs, Code Reviews, Domain knowledge, are the key to success
    * watch this... {{video "https://youtu.be/wVyQn6QRcT4?feature=shared" }}
    * instead of BA writing user stories, Dev interprets, QA guesses, PM chases; we can use AI-style "one-shared-specs" which reduces rework, interpretation drift, role friction; 
    * we all need to learn "Structured Intent Writing" .. executable intent.
    * as Architects :: `we need to champion shared specs, define role specific AGENT files, curate skills by role, treat AI as cross-functional team member`

---

## so that i dont forget

```bash
navigate to <working-dir> 
# once i update documentation, i have a few helpers
./doc.sh --help

./doc.sh serve      # recompile mkdocs, verify locally
./doc.sh publish    # publish to main.
./doc.sh commit     # push to remote.

```


---


## for further research
* TBD... more to be researched, experimented
* [HumanLayer](https://github.com/humanlayer/humanlayer.git)
* [Claude plugins](https://github.com/anthropics/claude-code.git)


---

**Last Updated:** April 15, 2026  
**Project:** Journey with AI Code Assistant  
**Version:** 1.0.3
