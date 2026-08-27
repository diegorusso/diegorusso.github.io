---
title: "Pictures of Diego Russo"
permalink: /pictures/
layout: single
classes: wide
author_profile: true
---

High-resolution photos for conference programmes, event websites, and publications.

<div class="speaker-photo-grid">
  <figure class="speaker-photo">
    <a class="speaker-photo__preview" href="{{ '/assets/images/headshot_01.jpg' | relative_url }}" aria-label="Open the full-resolution smiling headshot">
      <img src="{{ '/assets/images/pictures/headshot_01.webp' | relative_url }}" width="800" height="1200" alt="Diego Russo smiling in a studio headshot" loading="lazy" decoding="async">
    </a>
    <figcaption>
      <span class="speaker-photo__meta">
        <strong>Smiling headshot</strong>
        <small>Portrait | 4379 x 6569 | JPEG</small>
        <small>Photo by <a href="https://www.instagram.com/danioliverphoto/">Daniel Oliver</a></small>
      </span>
      <a class="btn btn--primary btn--small" href="{{ '/assets/images/headshot_01.jpg' | relative_url }}" download>
        <i class="fas fa-download" aria-hidden="true"></i> Download
      </a>
    </figcaption>
  </figure>

  <figure class="speaker-photo">
    <a class="speaker-photo__preview" href="{{ '/assets/images/headshot_02.jpg' | relative_url }}" aria-label="Open the full-resolution front-facing headshot">
      <img src="{{ '/assets/images/pictures/headshot_02.webp' | relative_url }}" width="800" height="1200" alt="Diego Russo in a front-facing studio headshot" loading="lazy" decoding="async">
    </a>
    <figcaption>
      <span class="speaker-photo__meta">
        <strong>Front-facing headshot</strong>
        <small>Portrait | 4704 x 7056 | JPEG</small>
        <small>Photo by <a href="https://www.instagram.com/danioliverphoto/">Daniel Oliver</a></small>
      </span>
      <a class="btn btn--primary btn--small" href="{{ '/assets/images/headshot_02.jpg' | relative_url }}" download>
        <i class="fas fa-download" aria-hidden="true"></i> Download
      </a>
    </figcaption>
  </figure>

  <figure class="speaker-photo">
    <a class="speaker-photo__preview" href="{{ '/assets/images/speaker.jpg' | relative_url }}" aria-label="Open the full-resolution square on-stage photo">
      <img src="{{ '/assets/images/pictures/speaker.webp' | relative_url }}" width="800" height="800" alt="Diego Russo speaking on stage with a laptop" loading="lazy" decoding="async">
    </a>
    <figcaption>
      <span class="speaker-photo__meta">
        <strong>On stage</strong>
        <small>Square | 1254 x 1254 | JPEG</small>
        <small>Photo by <a href="https://lukasz.langa.pl/">Łukasz Langa</a></small>
      </span>
      <a class="btn btn--primary btn--small" href="{{ '/assets/images/speaker.jpg' | relative_url }}" download>
        <i class="fas fa-download" aria-hidden="true"></i> Download
      </a>
    </figcaption>
  </figure>

  <figure class="speaker-photo">
    <a class="speaker-photo__preview" href="{{ '/assets/images/speaker_portrait.jpg' | relative_url }}" aria-label="Open the full-resolution portrait on-stage photo">
      <img src="{{ '/assets/images/pictures/speaker_portrait.webp' | relative_url }}" width="800" height="1066" alt="Portrait photo of Diego Russo speaking on stage with a laptop" loading="lazy" decoding="async">
    </a>
    <figcaption>
      <span class="speaker-photo__meta">
        <strong>On stage, portrait</strong>
        <small>Portrait | 1086 x 1448 | JPEG</small>
        <small>Photo by <a href="https://lukasz.langa.pl/">Łukasz Langa</a></small>
      </span>
      <a class="btn btn--primary btn--small" href="{{ '/assets/images/speaker_portrait.jpg' | relative_url }}" download>
        <i class="fas fa-download" aria-hidden="true"></i> Download
      </a>
    </figcaption>
  </figure>
</div>

<style>
  .speaker-photo-grid {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 2rem 1.5rem;
    margin-top: 1.5rem;
  }

  .speaker-photo {
    min-width: 0;
    margin: 0;
  }

  .speaker-photo__preview {
    display: block;
    overflow: hidden;
    border-radius: 4px;
    background: #f2f3f3;
  }

  .speaker-photo__preview img {
    display: block;
    width: 100%;
    height: auto;
    margin: 0;
  }

  .speaker-photo figcaption {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    gap: 1rem;
    padding-top: 0.75rem;
  }

  .speaker-photo__meta {
    min-width: 0;
  }

  .speaker-photo__meta strong,
  .speaker-photo__meta small {
    display: block;
  }

  .speaker-photo__meta small {
    margin-top: 0.2rem;
    color: #646769;
  }

  .speaker-photo .btn {
    flex: 0 0 auto;
    white-space: nowrap;
  }

  @media (max-width: 700px) {
    .speaker-photo-grid {
      grid-template-columns: minmax(0, 1fr);
    }
  }
</style>
