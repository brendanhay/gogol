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
-- Module      : Network.Google.Resource.YouTube.LiveChatBans.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatBans.insert@.
module Network.Google.Resource.YouTube.LiveChatBans.Insert
    (
    -- * REST Resource
      LiveChatBansInsertResource

    -- * Creating a Request
    , liveChatBansInsert
    , LiveChatBansInsert

    -- * Request Lenses
    , lcbiXgafv
    , lcbiPart
    , lcbiUploadProtocol
    , lcbiAccessToken
    , lcbiUploadType
    , lcbiPayload
    , lcbiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatBans.insert@ method which the
-- 'LiveChatBansInsert' request conforms to.
type LiveChatBansInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "bans" :>
             QueryParams "part" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveChatBan :>
                             Post '[JSON] LiveChatBan

-- | Inserts a new resource into this collection.
--
-- /See:/ 'liveChatBansInsert' smart constructor.
data LiveChatBansInsert =
  LiveChatBansInsert'
    { _lcbiXgafv :: !(Maybe Xgafv)
    , _lcbiPart :: ![Text]
    , _lcbiUploadProtocol :: !(Maybe Text)
    , _lcbiAccessToken :: !(Maybe Text)
    , _lcbiUploadType :: !(Maybe Text)
    , _lcbiPayload :: !LiveChatBan
    , _lcbiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatBansInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbiXgafv'
--
-- * 'lcbiPart'
--
-- * 'lcbiUploadProtocol'
--
-- * 'lcbiAccessToken'
--
-- * 'lcbiUploadType'
--
-- * 'lcbiPayload'
--
-- * 'lcbiCallback'
liveChatBansInsert
    :: [Text] -- ^ 'lcbiPart'
    -> LiveChatBan -- ^ 'lcbiPayload'
    -> LiveChatBansInsert
liveChatBansInsert pLcbiPart_ pLcbiPayload_ =
  LiveChatBansInsert'
    { _lcbiXgafv = Nothing
    , _lcbiPart = _Coerce # pLcbiPart_
    , _lcbiUploadProtocol = Nothing
    , _lcbiAccessToken = Nothing
    , _lcbiUploadType = Nothing
    , _lcbiPayload = pLcbiPayload_
    , _lcbiCallback = Nothing
    }


-- | V1 error format.
lcbiXgafv :: Lens' LiveChatBansInsert (Maybe Xgafv)
lcbiXgafv
  = lens _lcbiXgafv (\ s a -> s{_lcbiXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response returns. Set the parameter value to
-- snippet.
lcbiPart :: Lens' LiveChatBansInsert [Text]
lcbiPart
  = lens _lcbiPart (\ s a -> s{_lcbiPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcbiUploadProtocol :: Lens' LiveChatBansInsert (Maybe Text)
lcbiUploadProtocol
  = lens _lcbiUploadProtocol
      (\ s a -> s{_lcbiUploadProtocol = a})

-- | OAuth access token.
lcbiAccessToken :: Lens' LiveChatBansInsert (Maybe Text)
lcbiAccessToken
  = lens _lcbiAccessToken
      (\ s a -> s{_lcbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcbiUploadType :: Lens' LiveChatBansInsert (Maybe Text)
lcbiUploadType
  = lens _lcbiUploadType
      (\ s a -> s{_lcbiUploadType = a})

-- | Multipart request metadata.
lcbiPayload :: Lens' LiveChatBansInsert LiveChatBan
lcbiPayload
  = lens _lcbiPayload (\ s a -> s{_lcbiPayload = a})

-- | JSONP
lcbiCallback :: Lens' LiveChatBansInsert (Maybe Text)
lcbiCallback
  = lens _lcbiCallback (\ s a -> s{_lcbiCallback = a})

instance GoogleRequest LiveChatBansInsert where
        type Rs LiveChatBansInsert = LiveChatBan
        type Scopes LiveChatBansInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatBansInsert'{..}
          = go _lcbiPart _lcbiXgafv _lcbiUploadProtocol
              _lcbiAccessToken
              _lcbiUploadType
              _lcbiCallback
              (Just AltJSON)
              _lcbiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatBansInsertResource)
                      mempty
