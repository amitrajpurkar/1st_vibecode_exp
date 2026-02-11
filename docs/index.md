# Experiments with AI Coding Assistant

Here is the documentation (written by myself the human; not by AI). <br/><br/>
the intent for this exercise is to engage into a journey of understanding how to work with AI Coding Agents and how to use it effectively as a coding assistant to boost productivity.

---

## key takeaways

| **Artifact**| **Controls**| **Applies to**| **Lifespan**|
| ---- | ---- | ---- | ---- |
| AGENT.md| Behavior & discipline| AI agent| Long-lived|
| SpecKit| Intent & correctness| Features / systems| Per change|
| Skills| Capability & execution| Tasks| Reusable|


| **Dimension**| **AGENT.md**| **SpecKit**| **Skills**|
| ---- | ---- | ---- | ---- |
| insight | defines how the AI behaves| defines what is being built | defines what the AI can do |
| Primary purpose| Control agent behavior| Control development process| Control task execution|
| Scope| Entire repo| Individual feature / system| Individual task|
| Temporal role| Always-on| Lifecycle-based| Reusable|
| Changes often?| Rarely| Frequently| less often|
| Audience| AI agent| Humans + AI| Humans + AI|
| Enforces| Style, rules, discipline| Scope, intent, acceptance| Capability, execution|


## Journal date: 2026-02-11
* IMPORTANT: 
    * understanding how AGENT.md, SpecKit, Skills work is important
    * use readily-available developer-workflow:: Speckit, RIPER-5, Claude has one as well
        * Speckit: Constitution, Specify, Clarify, Plan, Task, Analyze, Implement, Review
        * RIPER-5: Research, Innovate, Plan, Execute, Review
        * Claude: xxx...
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
    * watch this... {{< youtube "https://youtu.be/wVyQn6QRcT4?feature=shared" >}}
    * or watch this... {{video "https://youtu.be/wVyQn6QRcT4?feature=shared" }}
    * instead of BA writing user stories, Dev interprets, QA guesses, PM chases; we can use AI-style "one-shared-specs" which reduces rework, interpretation drift, role friction; 
    * we all need to learn "Structured Intent Writing" .. executable intent.
    * as Architects :: `we need to champion shared specs, define role specific AGENT files, curate skills by role, treat AI as cross-functional team member`

---

## Experiments: (these are growing)

| Name | Description | Status |
|---|---|---|
| [First Experiment](FirstPlan.md) | migrate legacy app to new tech stack using **prompts** | ✅ |
| [Weather app](experiment02/README.md) | create a Weather App using **prompts** | ✅ |
| [Weather app 2](experiment03/README.md) | create similar Weather App using **Speckit** | ✅ |
| [Q&A app](experiment04/README.md) | create a Question Answer App using **speckit** using Claude Opus 4 | ✅ |
| [Q&A app 2](experiment05/README.md) | create another QA App using **speckit** using GPT 5.1 Reasoning | ✅ |
| [Restaurant EDA](https://github.com/amitrajpurkar/restaurant-eda/tree/001-restaurant-analytics) | explore restaurant data using **speckit** | ⚠️ |
| [Mosquito Risk EDA](https://github.com/amitrajpurkar/geoemergeamit) | explore mosquito risk data using **AGENTS.md; speckit; skills** | ✅ |
| ... | keep practising more... | xx |



---


## for further research
8. TBD... more to be researched, experimented


---

**Last Updated:** February 11, 2026  
**Project:** Journey with AI Code Assistant  
**Version:** 1.0.1
