{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.LibraryAgent.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.LibraryAgent.Types
    (
    -- * Service Configuration
      libraryAgentService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleExampleLibraryagentV1Shelf
    , GoogleExampleLibraryagentV1Shelf
    , googleExampleLibraryagentV1Shelf
    , gelvsName
    , gelvsTheme

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleExampleLibraryagentV1ListShelvesResponse
    , GoogleExampleLibraryagentV1ListShelvesResponse
    , googleExampleLibraryagentV1ListShelvesResponse
    , gelvlsrNextPageToken
    , gelvlsrShelves

    -- * GoogleExampleLibraryagentV1ListBooksResponse
    , GoogleExampleLibraryagentV1ListBooksResponse
    , googleExampleLibraryagentV1ListBooksResponse
    , gelvlbrNextPageToken
    , gelvlbrBooks

    -- * GoogleExampleLibraryagentV1Book
    , GoogleExampleLibraryagentV1Book
    , googleExampleLibraryagentV1Book
    , gelvbRead
    , gelvbName
    , gelvbAuthor
    , gelvbTitle
    ) where

import           Network.Google.LibraryAgent.Types.Product
import           Network.Google.LibraryAgent.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Library Agent API. This contains the host and root path used as a starting point for constructing service requests.
libraryAgentService :: ServiceConfig
libraryAgentService
  = defaultService (ServiceId "libraryagent:v1")
      "libraryagent.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
