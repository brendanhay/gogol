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
-- Module      : Network.Google.Resource.YouTube.Comments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.update@.
module Network.Google.Resource.YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate
    , CommentsUpdate

    -- * Request Lenses
    , cuXgafv
    , cuPart
    , cuUploadProtocol
    , cuAccessToken
    , cuUploadType
    , cuPayload
    , cuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.update@ method which the
-- 'CommentsUpdate' request conforms to.
type CommentsUpdateResource =
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
                         ReqBody '[JSON] Comment :> Put '[JSON] Comment

-- | Updates an existing resource.
--
-- /See:/ 'commentsUpdate' smart constructor.
data CommentsUpdate =
  CommentsUpdate'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuPart :: ![Text]
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuPayload :: !Comment
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuPart'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuCallback'
commentsUpdate
    :: [Text] -- ^ 'cuPart'
    -> Comment -- ^ 'cuPayload'
    -> CommentsUpdate
commentsUpdate pCuPart_ pCuPayload_ =
  CommentsUpdate'
    { _cuXgafv = Nothing
    , _cuPart = _Coerce # pCuPart_
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' CommentsUpdate (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | The *part* parameter identifies the properties that the API response
-- will include. You must at least include the snippet part in the
-- parameter value since that part contains all of the properties that the
-- API request can update.
cuPart :: Lens' CommentsUpdate [Text]
cuPart
  = lens _cuPart (\ s a -> s{_cuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CommentsUpdate (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' CommentsUpdate (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CommentsUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CommentsUpdate Comment
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | JSONP
cuCallback :: Lens' CommentsUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CommentsUpdate where
        type Rs CommentsUpdate = Comment
        type Scopes CommentsUpdate =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsUpdate'{..}
          = go _cuPart _cuXgafv _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsUpdateResource)
                      mempty
