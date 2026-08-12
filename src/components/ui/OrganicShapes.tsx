/** Signature craft only: primary CTA hedge crown (not global). */
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
          <clipPath id="clip-hedge-primary" clipPathUnits="objectBoundingBox">
            <path d="M0,1 L0,0.28 C0.03,0.28 0.06,0.1 0.18,0.1 L0.82,0.1 C0.94,0.1 0.97,0.28 1,0.28 L1,1 Z" />
          </clipPath>
        </defs>
      </svg>
      <style>{`
        .btn-primary {
          clip-path: url(#clip-hedge-primary);
          border-radius: 0;
        }
      `}</style>
    </>
  );
}
