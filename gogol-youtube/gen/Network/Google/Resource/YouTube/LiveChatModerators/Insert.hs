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
-- Module      : Network.Google.Resource.YouTube.LiveChatModerators.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatModerators.insert@.
module Network.Google.Resource.YouTube.LiveChatModerators.Insert
    (
    -- * REST Resource
      LiveChatModeratorsInsertResource

    -- * Creating a Request
    , liveChatModeratorsInsert
    , LiveChatModeratorsInsert

    -- * Request Lenses
    , lXgafv
    , lPart
    , lUploadProtocol
    , lAccessToken
    , lUploadType
    , lPayload
    , lCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.insert@ method which the
-- 'LiveChatModeratorsInsert' request conforms to.
type LiveChatModeratorsInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "moderators" :>
             QueryParams "part" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveChatModerator :>
                             Post '[JSON] LiveChatModerator

-- | Inserts a new resource into this collection.
--
-- /See:/ 'liveChatModeratorsInsert' smart constructor.
data LiveChatModeratorsInsert =
  LiveChatModeratorsInsert'
    { _lXgafv :: !(Maybe Xgafv)
    , _lPart :: ![Text]
    , _lUploadProtocol :: !(Maybe Text)
    , _lAccessToken :: !(Maybe Text)
    , _lUploadType :: !(Maybe Text)
    , _lPayload :: !LiveChatModerator
    , _lCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatModeratorsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lXgafv'
--
-- * 'lPart'
--
-- * 'lUploadProtocol'
--
-- * 'lAccessToken'
--
-- * 'lUploadType'
--
-- * 'lPayload'
--
-- * 'lCallback'
liveChatModeratorsInsert
    :: [Text] -- ^ 'lPart'
    -> LiveChatModerator -- ^ 'lPayload'
    -> LiveChatModeratorsInsert
liveChatModeratorsInsert pLPart_ pLPayload_ =
  LiveChatModeratorsInsert'
    { _lXgafv = Nothing
    , _lPart = _Coerce # pLPart_
    , _lUploadProtocol = Nothing
    , _lAccessToken = Nothing
    , _lUploadType = Nothing
    , _lPayload = pLPayload_
    , _lCallback = Nothing
    }


-- | V1 error format.
lXgafv :: Lens' LiveChatModeratorsInsert (Maybe Xgafv)
lXgafv = lens _lXgafv (\ s a -> s{_lXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response returns. Set the parameter value to
-- snippet.
lPart :: Lens' LiveChatModeratorsInsert [Text]
lPart
  = lens _lPart (\ s a -> s{_lPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lUploadProtocol :: Lens' LiveChatModeratorsInsert (Maybe Text)
lUploadProtocol
  = lens _lUploadProtocol
      (\ s a -> s{_lUploadProtocol = a})

-- | OAuth access token.
lAccessToken :: Lens' LiveChatModeratorsInsert (Maybe Text)
lAccessToken
  = lens _lAccessToken (\ s a -> s{_lAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lUploadType :: Lens' LiveChatModeratorsInsert (Maybe Text)
lUploadType
  = lens _lUploadType (\ s a -> s{_lUploadType = a})

-- | Multipart request metadata.
lPayload :: Lens' LiveChatModeratorsInsert LiveChatModerator
lPayload = lens _lPayload (\ s a -> s{_lPayload = a})

-- | JSONP
lCallback :: Lens' LiveChatModeratorsInsert (Maybe Text)
lCallback
  = lens _lCallback (\ s a -> s{_lCallback = a})

instance GoogleRequest LiveChatModeratorsInsert where
        type Rs LiveChatModeratorsInsert = LiveChatModerator
        type Scopes LiveChatModeratorsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatModeratorsInsert'{..}
          = go _lPart _lXgafv _lUploadProtocol _lAccessToken
              _lUploadType
              _lCallback
              (Just AltJSON)
              _lPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatModeratorsInsertResource)
                      mempty
