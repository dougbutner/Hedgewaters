/** Shared SVG clip paths for hedge buttons + water-edge panels (objectBoundingBox). */
export function OrganicShapes() {
  return (
    <>
      <svg
        aria-hidden
        focusable="false"
        width={0}
        height={0}
        className="pointer-events-none absolute"
        style={{ position: "absolute", width: 0, height: 0, overflow: "hidden" }}
      >
        <defs>
          {/* Gentle shoreline — few smooth waves, not serrated */}
          <clipPath id="clip-water" clipPathUnits="objectBoundingBox">
            <path d="M0,0.025 C0.12,-0.01 0.2,0.04 0.32,0.012 C0.44,-0.01 0.52,0.04 0.64,0.012 C0.76,-0.01 0.84,0.04 0.96,0.01 C1.0,0.0 1,0.03 1,0.03 L1,0.97 C0.88,1.01 0.8,0.96 0.68,0.988 C0.56,1.01 0.48,0.96 0.36,0.988 C0.24,1.01 0.16,0.96 0.04,0.99 C0.0,1.0 0,0.97 0,0.97 Z" />
          </clipPath>
          {/*
            Trimmed box-hedge: flat crown, softly rounded shoulders into the sides.
          */}
          <clipPath id="clip-hedge" clipPathUnits="objectBoundingBox">
            <path d="M0,1 L0,0.38 C0.02,0.2 0.1,0.1 0.22,0.1 L0.78,0.1 C0.9,0.1 0.98,0.2 1,0.38 L1,1 Z" />
          </clipPath>
        </defs>
      </svg>
      {/*
        Document-local <style> so url(#clip-*) resolves. Target real component
        classes — @apply does not attach .hedge-shape / .water-edge to the DOM.
      */}
      <style>{`
        .btn,
        .hedge-shape {
          clip-path: url(#clip-hedge);
          border-radius: 0;
        }
        .panel,
        .card,
        .input,
        .glass-field,
        .water-edge {
          clip-path: url(#clip-water);
          border-radius: 0;
        }
      `}</style>
    </>
  );
}
