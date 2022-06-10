resource "azuread_conditional_access_policy" "G001" {
    display_name = "G001"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
            ]
            excluded_users  = []
            included_groups = []
            included_roles  = []
            included_users  = [
                "GuestsOrExternalUsers",
            ]
        }
    }

    grant_controls {
        built_in_controls             = [
            "mfa",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

resource "azuread_conditional_access_policy" "L001" {
    display_name = "L001"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "other",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = []
            excluded_users  = [
                "de4e57c1-73e5-418e-a25f-ff67b7cf4b4c",
            ]
            included_groups = []
            included_roles  = []
            included_users  = [
                "All",
            ]
        }
    }

    grant_controls {
        built_in_controls             = [
            "block",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

resource "azuread_conditional_access_policy" "L002" {
    display_name = "L002"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "exchangeActiveSync",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = []
            excluded_users  = [
                "de4e57c1-73e5-418e-a25f-ff67b7cf4b4c",
            ]
            included_groups = []
            included_roles  = []
            included_users  = [
                "All",
            ]
        }
    }

    grant_controls {
        built_in_controls             = [
            "block",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

resource "azuread_conditional_access_policy" "M001" {
    display_name = "M001"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "Office365",
            ]
        }

        platforms {
            excluded_platforms = [
                "windows",
            ]
            included_platforms = [
                "all",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
            ]
            excluded_users  = [
                "GuestsOrExternalUsers",
            ]
            included_groups = [
                "e01300e7-84fd-4da6-940c-85077aa44e1f",
            ]
            included_roles  = []
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "compliantDevice",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}  
}

resource "azuread_conditional_access_policy" "M002" {
    display_name = "M002"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "Office365",
            ]
        }

        platforms {
            excluded_platforms = []
            included_platforms = [
                "android",
                "iOS",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
            ]
            excluded_users  = [
                "GuestsOrExternalUsers",
            ]
            included_groups = [
                "e01300e7-84fd-4da6-940c-85077aa44e1f",
            ]
            included_roles  = []
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "compliantApplication",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}  
}

resource "azuread_conditional_access_policy" "M003" {
    display_name = "M003"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "Office365",
            ]
        }

        locations {
            excluded_locations = [
                "AllTrusted",
            ]
            included_locations = [
                "All",
            ]
        }

        platforms {
            excluded_platforms = []
            included_platforms = [
                "windows",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
            ]
            excluded_users  = [
                "GuestsOrExternalUsers",
            ]
            included_groups = [
                "e01300e7-84fd-4da6-940c-85077aa44e1f",
            ]
            included_roles  = []
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "domainJoinedDevice",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

resource "azuread_conditional_access_policy" "P001" {
    display_name = "P001"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = []
            excluded_users  = []
            included_groups = []
            included_roles  = [
                "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
            ]
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "mfa",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}  
}

resource "azuread_conditional_access_policy" "P003" {
    display_name = "P003"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        locations {
            excluded_locations = [
                "AllTrusted",
            ]
            included_locations = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = []
            excluded_users  = []
            included_groups = []
            included_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
            ]
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "block",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

resource "azuread_conditional_access_policy" "R001" {
    display_name = "R001"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = []
        user_risk_levels    = []

        applications {
            excluded_applications = []
            included_applications = [
                "All",
            ]
        }

        locations {
            excluded_locations = [
                "AllTrusted",
            ]
            included_locations = [
                "All",
            ]
        }

        users {
            excluded_groups = []
            excluded_roles  = [
                "62e90394-69f5-4237-9190-012177145e10",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
            ]
            excluded_users  = [
                "GuestsOrExternalUsers",
            ]
            included_groups = [
                "e01300e7-84fd-4da6-940c-85077aa44e1f",
            ]
            included_roles  = []
            included_users  = []
        }
    }

    grant_controls {
        built_in_controls             = [
            "mfa",
            "compliantDevice",
            "domainJoinedDevice",
        ]
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}

