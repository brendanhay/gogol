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
-- Module      : Network.Google.Resource.Games.Applications.GetEndPoint
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a URL for the requested end point type.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.getEndPoint@.
module Network.Google.Resource.Games.Applications.GetEndPoint
    (
    -- * REST Resource
      ApplicationsGetEndPointResource

    -- * Creating a Request
    , applicationsGetEndPoint
    , ApplicationsGetEndPoint

    -- * Request Lenses
    , agepXgafv
    , agepUploadProtocol
    , agepAccessToken
    , agepUploadType
    , agepEndPointType
    , agepApplicationId
    , agepCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.applications.getEndPoint@ method which the
-- 'ApplicationsGetEndPoint' request conforms to.
type ApplicationsGetEndPointResource =
     "games" :>
       "v1" :>
         "applications" :>
           "getEndPoint" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "endPointType"
                       ApplicationsGetEndPointEndPointType
                       :>
                       QueryParam "applicationId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] EndPoint

-- | Returns a URL for the requested end point type.
--
-- /See:/ 'applicationsGetEndPoint' smart constructor.
data ApplicationsGetEndPoint =
  ApplicationsGetEndPoint'
    { _agepXgafv :: !(Maybe Xgafv)
    , _agepUploadProtocol :: !(Maybe Text)
    , _agepAccessToken :: !(Maybe Text)
    , _agepUploadType :: !(Maybe Text)
    , _agepEndPointType :: !(Maybe ApplicationsGetEndPointEndPointType)
    , _agepApplicationId :: !(Maybe Text)
    , _agepCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsGetEndPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agepXgafv'
--
-- * 'agepUploadProtocol'
--
-- * 'agepAccessToken'
--
-- * 'agepUploadType'
--
-- * 'agepEndPointType'
--
-- * 'agepApplicationId'
--
-- * 'agepCallback'
applicationsGetEndPoint
    :: ApplicationsGetEndPoint
applicationsGetEndPoint =
  ApplicationsGetEndPoint'
    { _agepXgafv = Nothing
    , _agepUploadProtocol = Nothing
    , _agepAccessToken = Nothing
    , _agepUploadType = Nothing
    , _agepEndPointType = Nothing
    , _agepApplicationId = Nothing
    , _agepCallback = Nothing
    }


-- | V1 error format.
agepXgafv :: Lens' ApplicationsGetEndPoint (Maybe Xgafv)
agepXgafv
  = lens _agepXgafv (\ s a -> s{_agepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agepUploadProtocol :: Lens' ApplicationsGetEndPoint (Maybe Text)
agepUploadProtocol
  = lens _agepUploadProtocol
      (\ s a -> s{_agepUploadProtocol = a})

-- | OAuth access token.
agepAccessToken :: Lens' ApplicationsGetEndPoint (Maybe Text)
agepAccessToken
  = lens _agepAccessToken
      (\ s a -> s{_agepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agepUploadType :: Lens' ApplicationsGetEndPoint (Maybe Text)
agepUploadType
  = lens _agepUploadType
      (\ s a -> s{_agepUploadType = a})

-- | Type of endpoint being requested.
agepEndPointType :: Lens' ApplicationsGetEndPoint (Maybe ApplicationsGetEndPointEndPointType)
agepEndPointType
  = lens _agepEndPointType
      (\ s a -> s{_agepEndPointType = a})

-- | The application ID from the Google Play developer console.
agepApplicationId :: Lens' ApplicationsGetEndPoint (Maybe Text)
agepApplicationId
  = lens _agepApplicationId
      (\ s a -> s{_agepApplicationId = a})

-- | JSONP
agepCallback :: Lens' ApplicationsGetEndPoint (Maybe Text)
agepCallback
  = lens _agepCallback (\ s a -> s{_agepCallback = a})

instance GoogleRequest ApplicationsGetEndPoint where
        type Rs ApplicationsGetEndPoint = EndPoint
        type Scopes ApplicationsGetEndPoint =
             '["https://www.googleapis.com/auth/games"]
        requestClient ApplicationsGetEndPoint'{..}
          = go _agepXgafv _agepUploadProtocol _agepAccessToken
              _agepUploadType
              _agepEndPointType
              _agepApplicationId
              _agepCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsGetEndPointResource)
                      mempty
