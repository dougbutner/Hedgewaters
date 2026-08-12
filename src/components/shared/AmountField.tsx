export function AmountField({
  label,
  value,
  onChange,
  symbol,
  subline,
  placeholder = "0.00",
  disabled,
}: {
  label: string;
  value: string;
  onChange: (v: string) => void;
  symbol?: string;
  subline?: string;
  placeholder?: string;
  disabled?: boolean;
}) {
  return (
    <div className="glass-field p-3">
      <div className="flex items-start justify-between gap-3">
        <label className="field-label">{label}</label>
        {symbol && (
          <span className="rounded bg-secondary px-2 py-0.5 text-[11px] font-semibold">{symbol}</span>
        )}
      </div>
      <input
        className="mt-1.5 w-full bg-transparent font-mono text-2xl font-semibold tabular-nums text-foreground outline-none placeholder:text-muted-foreground/40"
        inputMode="decimal"
        placeholder={placeholder}
        value={value}
        disabled={disabled}
        onChange={(e) => onChange(e.target.value.replace(/[^\d.]/g, ""))}
      />
      {subline && <p className="mt-1 text-[11px] text-muted-foreground">{subline}</p>}
    </div>
  );
}
