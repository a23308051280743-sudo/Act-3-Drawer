# Project Blueprint: Hotel Luxury Moonsea

## Overview

This project is a Flutter application for managing a luxury hotel, "Hotel Luxury Moonsea." It provides a dashboard for administrators to manage guests, rooms, floors, records, and employees.

## Design and Features

### Version 1.0

*   **Theme:**
    *   Primary Color: `Color(0xFF1A237E)` (Azul Noche)
    *   Secondary Color: `Color(0xFFC5A059)` (Dorado)
    *   Background Color: `Color(0xFFF2F2F2)` (Gris Claro)
*   **App Bar:**
    *   Displays the hotel name, "HOTEL LUXURY MOONSEA."
    *   Centered title with white text and letter spacing.
*   **Dashboard:**
    *   A welcome section with the title "Panel de Administración."
    *   A list of manageable sections:
        *   Huéspedes (Guests)
        *   Habitaciones (Rooms)
        *   Pisos (Floors)
        *   Registros (Records)
        *   Empleados (Employees)
*   **Menu Cards:**
    *   Each section is represented by a `Card` with an elevation.
    *   Each card has a `ListTile` containing:
        *   A leading `CircleAvatar` with a background image.
        *   A title for the section.
        *   A subtitle describing the section.
        *   A trailing arrow icon.
        *   An `onTap` function for future navigation.

## Current Request: Use Custom Images

### Plan

1.  **Modify `_tarjetaMenu`:** The `_tarjetaMenu` function was updated to accept an `imageUrl` string.
2.  **Update Calls:** The calls to `_tarjetaMenu` in the `build` method were updated to pass the `imageUrl` string for each card.
3.  **User Instructions:** The user has been instructed to replace the placeholder image URLs with their own image URLs.
