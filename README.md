# Hybrid Ferromagnetic–Ferrimagnetic Spin-Hall Nano-Oscillators (SHNO) Simulation
<medium><i>Optimizing Hybrid Ferromagnetic Metal-Ferrimagnetic Insulator SHNO: A Micromagnetic Study</i></medium>

A comprehensive study of hybrid SHNOs based on ferromagnetic metals (Py) and ferrimagnetic insulators (LAFO). This work investigates how varying the properties of the LAFO layer—such as thickness, saturation magnetization, and magnetic anisotropy—impacts auto-oscillation thresholds and microwave output power in spintronic devices.


**Authors**: Robert Xi, Ya-An Lai, Andrew D. Kent  
**Institution**: Center for Quantum Phenomena, NYU  
**Date**: October 27, 2024


## Objective

This project models and analyzes a **hybrid SHNO** consisting of a Py/Pt nanowire placed atop a thin LAFO film. The study aims to:

- Determine how **LAFO thickness (t)**, **saturation magnetization (μ₀Mₛ)**, and **perpendicular magnetic anisotropy (Kᵤ)** affect:
  - Threshold current density (Jₜₕ)
  - Spin-wave mode amplitude
  - Output microwave power
- Investigate the transition between **edge**, **bulk**, and **propagating** spin-wave modes.


## Simulation Details

- **Software**: MuMax3 (GPU-accelerated micromagnetics)
- **Geometry**:
  - Py nanowire: 400 × 1500 × 5 nm³
  - LAFO substrate: 1500 × 1500 × *t* nm (0–40 nm range)
- **Materials**:
  - **Permalloy (Py)**:
    - μ₀Mₛ = 1.08 T  
    - μ₀Mₑff = 0.78 T  
    - α = 2.6×10⁻²  
  - **LAFO**:
    - Aᵉˣ = 4 pJ/m  
    - α = 1×10⁻³  
    - Mₛ and Kᵤ varied during study

- **Spin current injection** modeled by applying a spin-Hall-induced torque (θ = 0.15) via a current through Pt.
- **External Field**: μ₀Hₑₓₜ = 0.08–1.2 T, applied at φ = 70°


## Key Results

### Threshold Current Density (Jₜₕ)

- **Weak dependence** on μ₀Mₛ,LAFO and Kᵤ,LAFO.
- **Strongest influence** comes from LAFO thickness (tₗₐfₒ).
- Jₜₕ increases slightly with increasing tₗₐfₒ.

### Output Power

- **FFT amplitude** used as a proxy for output microwave signal strength.
- **Optimal EM power** occurs around:
  - μ₀Mₛ,LAFO ≈ 0.17 T
  - Kᵤ,LAFO ≈ –20 kJ/m³
- Maximum power achieved when **f₍FMR,LAFO₎ ≈ f₍FMR,Py₎** (resonance).

### Mode Behavior (Spin Waves)

- **Large negative Kᵤ,LAFO** → localized edge modes.
- **Moderate Kᵤ,LAFO** → propagating spin waves.
- **Large positive Kᵤ,LAFO** → droplet-like modes.
- Mode profiles verified with spatial FFT of m_z(t).


##  Conclusions

- Hybrid Py/Pt/LAFO SHNOs benefit from **lower threshold currents** and **enhanced output power**.
- Optimizing **Kᵤ,LAFO** and **Mₛ,LAFO** enables **tunable mode control**, including localized and propagating spin waves.
- Peak EM power occurs at **resonance between LAFO and Py layers**.


##  Tools Used

- **Micromagnetics**: [MuMax3](https://mumax.github.io/)
- **Data Processing**: Fast Fourier Transforms (FFT), Lorentzian fits
- **Modeling**: Spin Hall effect, magnetization dynamics, anisotropic magnetoresistance (AMR)


## References

This work builds on prior studies in spintronics, SHNOs, and magnetic thin films. A complete list of 30+ references is available in the full PDF. Key contributors include Khitun, Kent, Suzuki, Akerman, and others.
