## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
    collapse = TRUE,
    comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(lavacreg)

## -----------------------------------------------------------------------------
# Usage of main function: countreg(y ~ z, data = d, family = "poisson")
m0 <- countreg(dv ~ z11, data = example01, family = "poisson")
m1 <- glm(dv ~ z11, data = example01, family = poisson())

summary(m0)
summary(m1)

## -----------------------------------------------------------------------------
m2 <- countreg(dv ~ eta1,
    lv = list(eta1 = c("z41", "z42", "z43")),
    data = example01,
    family = "nbinom"
)
summary(m2)

## -----------------------------------------------------------------------------
m3 <- countreg(dv ~ eta1 + z11,
    lv = list(eta1 = c("z41", "z42", "z43")),
    group = "treat",
    data = example01,
    family = "poisson"
)
summary(m3)

