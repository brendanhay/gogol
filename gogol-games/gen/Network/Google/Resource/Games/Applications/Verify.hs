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
-- Module      : Network.Google.Resource.Games.Applications.Verify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the auth token provided with this request is for the
-- application with the specified ID, and returns the ID of the player it
-- was granted for.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.verify@.
module Network.Google.Resource.Games.Applications.Verify
    (
    -- * REST Resource
      ApplicationsVerifyResource

    -- * Creating a Request
    , applicationsVerify
    , ApplicationsVerify

    -- * Request Lenses
    , avXgafv
    , avUploadProtocol
    , avAccessToken
    , avUploadType
    , avApplicationId
    , avCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.applications.verify@ method which the
-- 'ApplicationsVerify' request conforms to.
type ApplicationsVerifyResource =
     "games" :>
       "v1" :>
         "applications" :>
           Capture "applicationId" Text :>
             "verify" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ApplicationVerifyResponse

-- | Verifies the auth token provided with this request is for the
-- application with the specified ID, and returns the ID of the player it
-- was granted for.
--
-- /See:/ 'applicationsVerify' smart constructor.
data ApplicationsVerify =
  ApplicationsVerify'
    { _avXgafv :: !(Maybe Xgafv)
    , _avUploadProtocol :: !(Maybe Text)
    , _avAccessToken :: !(Maybe Text)
    , _avUploadType :: !(Maybe Text)
    , _avApplicationId :: !Text
    , _avCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsVerify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avXgafv'
--
-- * 'avUploadProtocol'
--
-- * 'avAccessToken'
--
-- * 'avUploadType'
--
-- * 'avApplicationId'
--
-- * 'avCallback'
applicationsVerify
    :: Text -- ^ 'avApplicationId'
    -> ApplicationsVerify
applicationsVerify pAvApplicationId_ =
  ApplicationsVerify'
    { _avXgafv = Nothing
    , _avUploadProtocol = Nothing
    , _avAccessToken = Nothing
    , _avUploadType = Nothing
    , _avApplicationId = pAvApplicationId_
    , _avCallback = Nothing
    }


-- | V1 error format.
avXgafv :: Lens' ApplicationsVerify (Maybe Xgafv)
avXgafv = lens _avXgafv (\ s a -> s{_avXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
avUploadProtocol :: Lens' ApplicationsVerify (Maybe Text)
avUploadProtocol
  = lens _avUploadProtocol
      (\ s a -> s{_avUploadProtocol = a})

-- | OAuth access token.
avAccessToken :: Lens' ApplicationsVerify (Maybe Text)
avAccessToken
  = lens _avAccessToken
      (\ s a -> s{_avAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
avUploadType :: Lens' ApplicationsVerify (Maybe Text)
avUploadType
  = lens _avUploadType (\ s a -> s{_avUploadType = a})

-- | The application ID from the Google Play developer console.
avApplicationId :: Lens' ApplicationsVerify Text
avApplicationId
  = lens _avApplicationId
      (\ s a -> s{_avApplicationId = a})

-- | JSONP
avCallback :: Lens' ApplicationsVerify (Maybe Text)
avCallback
  = lens _avCallback (\ s a -> s{_avCallback = a})

instance GoogleRequest ApplicationsVerify where
        type Rs ApplicationsVerify =
             ApplicationVerifyResponse
        type Scopes ApplicationsVerify =
             '["https://www.googleapis.com/auth/games"]
        requestClient ApplicationsVerify'{..}
          = go _avApplicationId _avXgafv _avUploadProtocol
              _avAccessToken
              _avUploadType
              _avCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsVerifyResource)
                      mempty
