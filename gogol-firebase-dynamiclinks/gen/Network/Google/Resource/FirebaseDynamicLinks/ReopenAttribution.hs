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
-- Module      : Network.Google.Resource.FirebaseDynamicLinks.ReopenAttribution
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get iOS reopen attribution for app universal link open deeplinking.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.reopenAttribution@.
module Network.Google.Resource.FirebaseDynamicLinks.ReopenAttribution
    (
    -- * REST Resource
      ReopenAttributionResource

    -- * Creating a Request
    , reopenAttribution
    , ReopenAttribution

    -- * Request Lenses
    , raXgafv
    , raUploadProtocol
    , raAccessToken
    , raUploadType
    , raPayload
    , raCallback
    ) where

import Network.Google.FirebaseDynamicLinks.Types
import Network.Google.Prelude

-- | A resource alias for @firebasedynamiclinks.reopenAttribution@ method which the
-- 'ReopenAttribution' request conforms to.
type ReopenAttributionResource =
     "v1" :>
       "reopenAttribution" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIosReopenAttributionRequest :>
                       Post '[JSON] GetIosReopenAttributionResponse

-- | Get iOS reopen attribution for app universal link open deeplinking.
--
-- /See:/ 'reopenAttribution' smart constructor.
data ReopenAttribution =
  ReopenAttribution'
    { _raXgafv :: !(Maybe Xgafv)
    , _raUploadProtocol :: !(Maybe Text)
    , _raAccessToken :: !(Maybe Text)
    , _raUploadType :: !(Maybe Text)
    , _raPayload :: !GetIosReopenAttributionRequest
    , _raCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReopenAttribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raXgafv'
--
-- * 'raUploadProtocol'
--
-- * 'raAccessToken'
--
-- * 'raUploadType'
--
-- * 'raPayload'
--
-- * 'raCallback'
reopenAttribution
    :: GetIosReopenAttributionRequest -- ^ 'raPayload'
    -> ReopenAttribution
reopenAttribution pRaPayload_ =
  ReopenAttribution'
    { _raXgafv = Nothing
    , _raUploadProtocol = Nothing
    , _raAccessToken = Nothing
    , _raUploadType = Nothing
    , _raPayload = pRaPayload_
    , _raCallback = Nothing
    }


-- | V1 error format.
raXgafv :: Lens' ReopenAttribution (Maybe Xgafv)
raXgafv = lens _raXgafv (\ s a -> s{_raXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
raUploadProtocol :: Lens' ReopenAttribution (Maybe Text)
raUploadProtocol
  = lens _raUploadProtocol
      (\ s a -> s{_raUploadProtocol = a})

-- | OAuth access token.
raAccessToken :: Lens' ReopenAttribution (Maybe Text)
raAccessToken
  = lens _raAccessToken
      (\ s a -> s{_raAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
raUploadType :: Lens' ReopenAttribution (Maybe Text)
raUploadType
  = lens _raUploadType (\ s a -> s{_raUploadType = a})

-- | Multipart request metadata.
raPayload :: Lens' ReopenAttribution GetIosReopenAttributionRequest
raPayload
  = lens _raPayload (\ s a -> s{_raPayload = a})

-- | JSONP
raCallback :: Lens' ReopenAttribution (Maybe Text)
raCallback
  = lens _raCallback (\ s a -> s{_raCallback = a})

instance GoogleRequest ReopenAttribution where
        type Rs ReopenAttribution =
             GetIosReopenAttributionResponse
        type Scopes ReopenAttribution =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient ReopenAttribution'{..}
          = go _raXgafv _raUploadProtocol _raAccessToken
              _raUploadType
              _raCallback
              (Just AltJSON)
              _raPayload
              firebaseDynamicLinksService
          where go
                  = buildClient
                      (Proxy :: Proxy ReopenAttributionResource)
                      mempty
