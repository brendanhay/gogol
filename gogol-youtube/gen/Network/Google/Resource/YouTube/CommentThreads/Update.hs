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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.commentThreads.update@.
module Network.Google.Resource.YouTube.CommentThreads.Update
    (
    -- * REST Resource
      CommentThreadsUpdateResource

    -- * Creating a Request
    , commentThreadsUpdate
    , CommentThreadsUpdate

    -- * Request Lenses
    , ctuXgafv
    , ctuPart
    , ctuUploadProtocol
    , ctuAccessToken
    , ctuUploadType
    , ctuPayload
    , ctuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.commentThreads.update@ method which the
-- 'CommentThreadsUpdate' request conforms to.
type CommentThreadsUpdateResource =
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
                           Put '[JSON] CommentThread

-- | Updates an existing resource.
--
-- /See:/ 'commentThreadsUpdate' smart constructor.
data CommentThreadsUpdate =
  CommentThreadsUpdate'
    { _ctuXgafv :: !(Maybe Xgafv)
    , _ctuPart :: ![Text]
    , _ctuUploadProtocol :: !(Maybe Text)
    , _ctuAccessToken :: !(Maybe Text)
    , _ctuUploadType :: !(Maybe Text)
    , _ctuPayload :: !CommentThread
    , _ctuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentThreadsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuXgafv'
--
-- * 'ctuPart'
--
-- * 'ctuUploadProtocol'
--
-- * 'ctuAccessToken'
--
-- * 'ctuUploadType'
--
-- * 'ctuPayload'
--
-- * 'ctuCallback'
commentThreadsUpdate
    :: [Text] -- ^ 'ctuPart'
    -> CommentThread -- ^ 'ctuPayload'
    -> CommentThreadsUpdate
commentThreadsUpdate pCtuPart_ pCtuPayload_ =
  CommentThreadsUpdate'
    { _ctuXgafv = Nothing
    , _ctuPart = _Coerce # pCtuPart_
    , _ctuUploadProtocol = Nothing
    , _ctuAccessToken = Nothing
    , _ctuUploadType = Nothing
    , _ctuPayload = pCtuPayload_
    , _ctuCallback = Nothing
    }


-- | V1 error format.
ctuXgafv :: Lens' CommentThreadsUpdate (Maybe Xgafv)
ctuXgafv = lens _ctuXgafv (\ s a -> s{_ctuXgafv = a})

-- | The *part* parameter specifies a comma-separated list of commentThread
-- resource properties that the API response will include. You must at
-- least include the snippet part in the parameter value since that part
-- contains all of the properties that the API request can update.
ctuPart :: Lens' CommentThreadsUpdate [Text]
ctuPart
  = lens _ctuPart (\ s a -> s{_ctuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctuUploadProtocol :: Lens' CommentThreadsUpdate (Maybe Text)
ctuUploadProtocol
  = lens _ctuUploadProtocol
      (\ s a -> s{_ctuUploadProtocol = a})

-- | OAuth access token.
ctuAccessToken :: Lens' CommentThreadsUpdate (Maybe Text)
ctuAccessToken
  = lens _ctuAccessToken
      (\ s a -> s{_ctuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctuUploadType :: Lens' CommentThreadsUpdate (Maybe Text)
ctuUploadType
  = lens _ctuUploadType
      (\ s a -> s{_ctuUploadType = a})

-- | Multipart request metadata.
ctuPayload :: Lens' CommentThreadsUpdate CommentThread
ctuPayload
  = lens _ctuPayload (\ s a -> s{_ctuPayload = a})

-- | JSONP
ctuCallback :: Lens' CommentThreadsUpdate (Maybe Text)
ctuCallback
  = lens _ctuCallback (\ s a -> s{_ctuCallback = a})

instance GoogleRequest CommentThreadsUpdate where
        type Rs CommentThreadsUpdate = CommentThread
        type Scopes CommentThreadsUpdate =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentThreadsUpdate'{..}
          = go _ctuPart _ctuXgafv _ctuUploadProtocol
              _ctuAccessToken
              _ctuUploadType
              _ctuCallback
              (Just AltJSON)
              _ctuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentThreadsUpdateResource)
                      mempty
