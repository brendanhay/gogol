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
-- Module      : Network.Google.Resource.YouTube.Comments.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.insert@.
module Network.Google.Resource.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert
    , CommentsInsert

    -- * Request Lenses
    , comXgafv
    , comPart
    , comUploadProtocol
    , comAccessToken
    , comUploadType
    , comPayload
    , comCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.insert@ method which the
-- 'CommentsInsert' request conforms to.
type CommentsInsertResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Inserts a new resource into this collection.
--
-- /See:/ 'commentsInsert' smart constructor.
data CommentsInsert =
  CommentsInsert'
    { _comXgafv :: !(Maybe Xgafv)
    , _comPart :: ![Text]
    , _comUploadProtocol :: !(Maybe Text)
    , _comAccessToken :: !(Maybe Text)
    , _comUploadType :: !(Maybe Text)
    , _comPayload :: !Comment
    , _comCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comXgafv'
--
-- * 'comPart'
--
-- * 'comUploadProtocol'
--
-- * 'comAccessToken'
--
-- * 'comUploadType'
--
-- * 'comPayload'
--
-- * 'comCallback'
commentsInsert
    :: [Text] -- ^ 'comPart'
    -> Comment -- ^ 'comPayload'
    -> CommentsInsert
commentsInsert pComPart_ pComPayload_ =
  CommentsInsert'
    { _comXgafv = Nothing
    , _comPart = _Coerce # pComPart_
    , _comUploadProtocol = Nothing
    , _comAccessToken = Nothing
    , _comUploadType = Nothing
    , _comPayload = pComPayload_
    , _comCallback = Nothing
    }


-- | V1 error format.
comXgafv :: Lens' CommentsInsert (Maybe Xgafv)
comXgafv = lens _comXgafv (\ s a -> s{_comXgafv = a})

-- | The *part* parameter identifies the properties that the API response
-- will include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
comPart :: Lens' CommentsInsert [Text]
comPart
  = lens _comPart (\ s a -> s{_comPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
comUploadProtocol :: Lens' CommentsInsert (Maybe Text)
comUploadProtocol
  = lens _comUploadProtocol
      (\ s a -> s{_comUploadProtocol = a})

-- | OAuth access token.
comAccessToken :: Lens' CommentsInsert (Maybe Text)
comAccessToken
  = lens _comAccessToken
      (\ s a -> s{_comAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
comUploadType :: Lens' CommentsInsert (Maybe Text)
comUploadType
  = lens _comUploadType
      (\ s a -> s{_comUploadType = a})

-- | Multipart request metadata.
comPayload :: Lens' CommentsInsert Comment
comPayload
  = lens _comPayload (\ s a -> s{_comPayload = a})

-- | JSONP
comCallback :: Lens' CommentsInsert (Maybe Text)
comCallback
  = lens _comCallback (\ s a -> s{_comCallback = a})

instance GoogleRequest CommentsInsert where
        type Rs CommentsInsert = Comment
        type Scopes CommentsInsert =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsInsert'{..}
          = go _comPart _comXgafv _comUploadProtocol
              _comAccessToken
              _comUploadType
              _comCallback
              (Just AltJSON)
              _comPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
