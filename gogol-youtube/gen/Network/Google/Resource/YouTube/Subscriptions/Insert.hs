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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.subscriptions.insert@.
module Network.Google.Resource.YouTube.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siXgafv
    , siPart
    , siUploadProtocol
    , siAccessToken
    , siUploadType
    , siPayload
    , siCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.subscriptions.insert@ method which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertResource =
     "youtube" :>
       "v3" :>
         "subscriptions" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Subscription :>
                           Post '[JSON] Subscription

-- | Inserts a new resource into this collection.
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert =
  SubscriptionsInsert'
    { _siXgafv :: !(Maybe Xgafv)
    , _siPart :: ![Text]
    , _siUploadProtocol :: !(Maybe Text)
    , _siAccessToken :: !(Maybe Text)
    , _siUploadType :: !(Maybe Text)
    , _siPayload :: !Subscription
    , _siCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siXgafv'
--
-- * 'siPart'
--
-- * 'siUploadProtocol'
--
-- * 'siAccessToken'
--
-- * 'siUploadType'
--
-- * 'siPayload'
--
-- * 'siCallback'
subscriptionsInsert
    :: [Text] -- ^ 'siPart'
    -> Subscription -- ^ 'siPayload'
    -> SubscriptionsInsert
subscriptionsInsert pSiPart_ pSiPayload_ =
  SubscriptionsInsert'
    { _siXgafv = Nothing
    , _siPart = _Coerce # pSiPart_
    , _siUploadProtocol = Nothing
    , _siAccessToken = Nothing
    , _siUploadType = Nothing
    , _siPayload = pSiPayload_
    , _siCallback = Nothing
    }


-- | V1 error format.
siXgafv :: Lens' SubscriptionsInsert (Maybe Xgafv)
siXgafv = lens _siXgafv (\ s a -> s{_siXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include.
siPart :: Lens' SubscriptionsInsert [Text]
siPart
  = lens _siPart (\ s a -> s{_siPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
siUploadProtocol :: Lens' SubscriptionsInsert (Maybe Text)
siUploadProtocol
  = lens _siUploadProtocol
      (\ s a -> s{_siUploadProtocol = a})

-- | OAuth access token.
siAccessToken :: Lens' SubscriptionsInsert (Maybe Text)
siAccessToken
  = lens _siAccessToken
      (\ s a -> s{_siAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
siUploadType :: Lens' SubscriptionsInsert (Maybe Text)
siUploadType
  = lens _siUploadType (\ s a -> s{_siUploadType = a})

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | JSONP
siCallback :: Lens' SubscriptionsInsert (Maybe Text)
siCallback
  = lens _siCallback (\ s a -> s{_siCallback = a})

instance GoogleRequest SubscriptionsInsert where
        type Rs SubscriptionsInsert = Subscription
        type Scopes SubscriptionsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SubscriptionsInsert'{..}
          = go _siPart _siXgafv _siUploadProtocol
              _siAccessToken
              _siUploadType
              _siCallback
              (Just AltJSON)
              _siPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      mempty
