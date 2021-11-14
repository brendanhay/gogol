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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.commentThreads.insert@.
module Network.Google.Resource.YouTube.CommentThreads.Insert
    (
    -- * REST Resource
      CommentThreadsInsertResource

    -- * Creating a Request
    , commentThreadsInsert
    , CommentThreadsInsert

    -- * Request Lenses
    , ctiXgafv
    , ctiPart
    , ctiUploadProtocol
    , ctiAccessToken
    , ctiUploadType
    , ctiPayload
    , ctiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.commentThreads.insert@ method which the
-- 'CommentThreadsInsert' request conforms to.
type CommentThreadsInsertResource =
     "youtube" :>
       "v3" :>
         "commentThreads" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CommentThread :>
                           Post '[JSON] CommentThread

-- | Inserts a new resource into this collection.
--
-- /See:/ 'commentThreadsInsert' smart constructor.
data CommentThreadsInsert =
  CommentThreadsInsert'
    { _ctiXgafv :: !(Maybe Xgafv)
    , _ctiPart :: ![Text]
    , _ctiUploadProtocol :: !(Maybe Text)
    , _ctiAccessToken :: !(Maybe Text)
    , _ctiUploadType :: !(Maybe Text)
    , _ctiPayload :: !CommentThread
    , _ctiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentThreadsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctiXgafv'
--
-- * 'ctiPart'
--
-- * 'ctiUploadProtocol'
--
-- * 'ctiAccessToken'
--
-- * 'ctiUploadType'
--
-- * 'ctiPayload'
--
-- * 'ctiCallback'
commentThreadsInsert
    :: [Text] -- ^ 'ctiPart'
    -> CommentThread -- ^ 'ctiPayload'
    -> CommentThreadsInsert
commentThreadsInsert pCtiPart_ pCtiPayload_ =
  CommentThreadsInsert'
    { _ctiXgafv = Nothing
    , _ctiPart = _Coerce # pCtiPart_
    , _ctiUploadProtocol = Nothing
    , _ctiAccessToken = Nothing
    , _ctiUploadType = Nothing
    , _ctiPayload = pCtiPayload_
    , _ctiCallback = Nothing
    }


-- | V1 error format.
ctiXgafv :: Lens' CommentThreadsInsert (Maybe Xgafv)
ctiXgafv = lens _ctiXgafv (\ s a -> s{_ctiXgafv = a})

-- | The *part* parameter identifies the properties that the API response
-- will include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
ctiPart :: Lens' CommentThreadsInsert [Text]
ctiPart
  = lens _ctiPart (\ s a -> s{_ctiPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctiUploadProtocol :: Lens' CommentThreadsInsert (Maybe Text)
ctiUploadProtocol
  = lens _ctiUploadProtocol
      (\ s a -> s{_ctiUploadProtocol = a})

-- | OAuth access token.
ctiAccessToken :: Lens' CommentThreadsInsert (Maybe Text)
ctiAccessToken
  = lens _ctiAccessToken
      (\ s a -> s{_ctiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctiUploadType :: Lens' CommentThreadsInsert (Maybe Text)
ctiUploadType
  = lens _ctiUploadType
      (\ s a -> s{_ctiUploadType = a})

-- | Multipart request metadata.
ctiPayload :: Lens' CommentThreadsInsert CommentThread
ctiPayload
  = lens _ctiPayload (\ s a -> s{_ctiPayload = a})

-- | JSONP
ctiCallback :: Lens' CommentThreadsInsert (Maybe Text)
ctiCallback
  = lens _ctiCallback (\ s a -> s{_ctiCallback = a})

instance GoogleRequest CommentThreadsInsert where
        type Rs CommentThreadsInsert = CommentThread
        type Scopes CommentThreadsInsert =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentThreadsInsert'{..}
          = go _ctiPart _ctiXgafv _ctiUploadProtocol
              _ctiAccessToken
              _ctiUploadType
              _ctiCallback
              (Just AltJSON)
              _ctiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentThreadsInsertResource)
                      mempty
