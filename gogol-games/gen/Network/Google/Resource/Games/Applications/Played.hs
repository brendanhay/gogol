{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Applications.Played
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Indicate that the currently authenticated user is playing your
-- application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.played@.
module Network.Google.Resource.Games.Applications.Played
    (
    -- * REST Resource
      ApplicationsPlayedResource

    -- * Creating a Request
    , applicationsPlayed
    , ApplicationsPlayed

    -- * Request Lenses
    , apXgafv
    , apUploadProtocol
    , apAccessToken
    , apUploadType
    , apCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.applications.played@ method which the
-- 'ApplicationsPlayed' request conforms to.
type ApplicationsPlayedResource =
     "games" :>
       "v1" :>
         "applications" :>
           "played" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Indicate that the currently authenticated user is playing your
-- application.
--
-- /See:/ 'applicationsPlayed' smart constructor.
data ApplicationsPlayed =
  ApplicationsPlayed'
    { _apXgafv :: !(Maybe Xgafv)
    , _apUploadProtocol :: !(Maybe Text)
    , _apAccessToken :: !(Maybe Text)
    , _apUploadType :: !(Maybe Text)
    , _apCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsPlayed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apXgafv'
--
-- * 'apUploadProtocol'
--
-- * 'apAccessToken'
--
-- * 'apUploadType'
--
-- * 'apCallback'
applicationsPlayed
    :: ApplicationsPlayed
applicationsPlayed =
  ApplicationsPlayed'
    { _apXgafv = Nothing
    , _apUploadProtocol = Nothing
    , _apAccessToken = Nothing
    , _apUploadType = Nothing
    , _apCallback = Nothing
    }


-- | V1 error format.
apXgafv :: Lens' ApplicationsPlayed (Maybe Xgafv)
apXgafv = lens _apXgafv (\ s a -> s{_apXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apUploadProtocol :: Lens' ApplicationsPlayed (Maybe Text)
apUploadProtocol
  = lens _apUploadProtocol
      (\ s a -> s{_apUploadProtocol = a})

-- | OAuth access token.
apAccessToken :: Lens' ApplicationsPlayed (Maybe Text)
apAccessToken
  = lens _apAccessToken
      (\ s a -> s{_apAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apUploadType :: Lens' ApplicationsPlayed (Maybe Text)
apUploadType
  = lens _apUploadType (\ s a -> s{_apUploadType = a})

-- | JSONP
apCallback :: Lens' ApplicationsPlayed (Maybe Text)
apCallback
  = lens _apCallback (\ s a -> s{_apCallback = a})

instance GoogleRequest ApplicationsPlayed where
        type Rs ApplicationsPlayed = ()
        type Scopes ApplicationsPlayed =
             '["https://www.googleapis.com/auth/games"]
        requestClient ApplicationsPlayed'{..}
          = go _apXgafv _apUploadProtocol _apAccessToken
              _apUploadType
              _apCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsPlayedResource)
                      mempty
