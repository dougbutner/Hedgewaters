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
    <div className="card p-5">
      <div className="flex items-start justify-between gap-3">
        <label className="text-sm text-muted-foreground">{label}</label>
        {symbol && (
          <span className="rounded-full bg-secondary px-3 py-1 text-xs font-medium">{symbol}</span>
        )}
      </div>
      <input
        className="mt-2 w-full bg-transparent font-display text-4xl tracking-wide text-foreground outline-none placeholder:text-muted-foreground/50"
        inputMode="decimal"
        placeholder={placeholder}
        value={value}
        disabled={disabled}
        onChange={(e) => onChange(e.target.value.replace(/[^\d.]/g, ""))}
      />
      {subline && <p className="mt-1 text-sm text-muted-foreground">{subline}</p>}
    </div>
  );
}
