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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.subscriptions.delete@.
module Network.Google.Resource.YouTube.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteResource

    -- * Creating a Request
    , subscriptionsDelete
    , SubscriptionsDelete

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdAccessToken
    , sdUploadType
    , sdId
    , sdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.subscriptions.delete@ method which the
-- 'SubscriptionsDelete' request conforms to.
type SubscriptionsDeleteResource =
     "youtube" :>
       "v3" :>
         "subscriptions" :>
           QueryParam "id" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a resource.
--
-- /See:/ 'subscriptionsDelete' smart constructor.
data SubscriptionsDelete =
  SubscriptionsDelete'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdId :: !Text
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdId'
--
-- * 'sdCallback'
subscriptionsDelete
    :: Text -- ^ 'sdId'
    -> SubscriptionsDelete
subscriptionsDelete pSdId_ =
  SubscriptionsDelete'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdId = pSdId_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' SubscriptionsDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' SubscriptionsDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | OAuth access token.
sdAccessToken :: Lens' SubscriptionsDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' SubscriptionsDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

sdId :: Lens' SubscriptionsDelete Text
sdId = lens _sdId (\ s a -> s{_sdId = a})

-- | JSONP
sdCallback :: Lens' SubscriptionsDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest SubscriptionsDelete where
        type Rs SubscriptionsDelete = ()
        type Scopes SubscriptionsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SubscriptionsDelete'{..}
          = go (Just _sdId) _sdXgafv _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      mempty
