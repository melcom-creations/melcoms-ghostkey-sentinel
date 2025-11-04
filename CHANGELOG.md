# Changelog

All notable changes to the "melcom's GhostKey Sentinel" project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [1.1] - 2025-11-04

This is a compatibility and stability update.

### Fixed
- **Critical conflict with Steam Overlay:** The script no longer intercepts the `Tab` key. This ensures the native `Shift + Tab` shortcut is passed through to the system without any interference, allowing the Steam Overlay to open reliably every time.

### Removed
- The `Tab` key has been removed from the default list of monitored keys (`KeyArray`) to implement the fix above.

---

## [1.0] - 2025-11-04

### Added
- **Initial Release:** First public version of GhostKey Sentinel.
- **Core Debouncing Logic:** The main script functionality to intercept and block unwanted double key presses ("chattering").
- **Customizable Debounce Time:** Added the `DebounceTime` variable, allowing users to fine-tune the script's sensitivity. The default value was set to `40` based on initial testing for optimal performance.
- **Broad Key Support:** Monitoring for all standard alphanumeric keys, common functional keys, and German umlauts (`ö`, `ä`, `ü`).