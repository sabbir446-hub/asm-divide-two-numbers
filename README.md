# 8086 Assembly Single-Digit Division

A basic 8086 Assembly Language program written in MASM/TASM syntax that demonstrates how to perform arithmetic integer division on user-inputted numbers using the `DIV` instruction and DOS interrupts (`INT 21H`).

## 🚀 Project Overview

This program captures two separate single-digit number inputs from the user (a dividend and a divisor), converts them from ASCII to numeric values, performs the division, and extracts the quotient. Finally, it converts the quotient back to ASCII format so it can be displayed on the screen.

## 🛠️ How It Works & Logic

Assembly-te bhag korar niom thoda binnw, karon `DIV` instruction-ti implicit-babe `AX` register-ke divisor (bhagok) diye bhag kore:

1. **First Input & Conversion (Dividend):** Takes the first character (`AH = 1`), converts it to a numeric value by subtracting $48$ (`SUB AL, 48`), and stores it in `BL`.
2. **Second Input & Conversion (Divisor):** Takes the second character, converts it to a numeric value, and stores it in `CL`.
3. **Preparing for Division (`MOV AH, 0`):** * `DIV CL` instruction-ti holo ekta 8-bit division, ja puro `AX` register (16-bit) ke `CL` diye bhag kore.
   * Tai prothome `MOV AL, BL` kore dividend-ti `AL`-e neya hoy, ebong `MOV AH, 0` kore `AH` register-ke clear kora hoy। Eta nishchit kore je `AX` register-e kono garbage value nei।
4. **The Division (`DIV CL`):** Performs $AX \div CL$.
   * **`AL`** register-e automatic-babe **Quotient (bhagfol)** store hoy।
   * **`AH`** register-e automatic-babe **Remainder (vagshesh)** store hoy।
5. **ASCII Re-adjustment (`ADD AL, 48`):** Bhagfol-ti screen-e dekhate hole take abar ASCII-te convert korte hoy। Tai `AL` (quotient) er shathe $48$ jog kora hoyeche (vagshesh ignore kora hoyeche)।
6. **Output & Exit:** `AL`-er value-ti `DL`-e niye print kora hoy ebong program-ti safely sesh hoy (`AH = 4CH`)।
