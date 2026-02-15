# Experiments with AI Coding Assistant

Here is the documentation (written by myself the human; not by AI). <br/><br/>
the Quest:  **to engage into a journey of understanding how to work with AI Coding Agents and how to use it effectively as a coding assistant to boost productivity.**

<br/><br/><br/>
noting down the intent of this documentation:

* highlight the importance of agents, specs, skills.. "the why"
* show using my experiments the way these helped.. "the how"
* (maybe in future).. show how new-SDLC looks like, as we use Agentic AI as a coding assistant

---

## key takeaways


(the why...) 

| **Artifact**| **Controls**| **Applies to**| **Lifespan**|
| ---- | ---- | ---- | ---- |
| AGENT.md| Behavior & discipline| AI agent| Long-lived|
| SpecKit| Intent & correctness| Features / systems| Per change|
| Skills| Capability & execution| Tasks| Reusable|

<br/><br/><br/>
(the what...) 

| **Dimension**| **AGENT.md**| **SpecKit**| **Skills**|
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
| ... | keep practising more... | xx | xx |


---


## Journal date: 2026-02-11
* IMPORTANT: 
    * understanding how AGENT.md, SpecKit, Skills work is important
    * use readily-available developer-workflow:: Speckit, RIPER-5, Claude has one as well
        * Speckit: Constitution → Specify → Clarify → Plan → Task → Analyze → Implement → Review
        * RIPER-5: Research → Innovate → Plan → Execute → Review
        * Claude: xxx...
        * HumanLayer: Research → Plan → Implement → Validate
    * add to your toolbox a library of AGENTS.md, Skills
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


---


## for further research
* TBD... more to be researched, experimented
* [HumanLayer](https://github.com/humanlayer/humanlayer.git)
* [Claude plugins](https://github.com/anthropics/claude-code.git)


---

**Last Updated:** February 15, 2026  
**Project:** Journey with AI Code Assistant  
**Version:** 1.0.2
