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
-- Module      : Network.Google.Resource.Chat.Media.Download
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads media. Download is supported on the URI
-- \`\/v1\/media\/{+name}?alt=media\`.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.media.download@.
module Network.Google.Resource.Chat.Media.Download
    (
    -- * REST Resource
      MediaDownloadResource

    -- * Creating a Request
    , mediaDownload
    , MediaDownload'

    -- * Request Lenses
    , mdXgafv
    , mdUploadProtocol
    , mdResourceName
    , mdAccessToken
    , mdUploadType
    , mdCallback
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.media.download@ method which the
-- 'MediaDownload'' request conforms to.
type MediaDownloadResource =
     "v1" :>
       "media" :>
         Capture "resourceName" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Media
       :<|>
       "v1" :>
         "media" :>
           Capture "resourceName" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltMedia :>
                         Get '[OctetStream] Stream

-- | Downloads media. Download is supported on the URI
-- \`\/v1\/media\/{+name}?alt=media\`.
--
-- /See:/ 'mediaDownload' smart constructor.
data MediaDownload' =
  MediaDownload''
    { _mdXgafv :: !(Maybe Xgafv)
    , _mdUploadProtocol :: !(Maybe Text)
    , _mdResourceName :: !Text
    , _mdAccessToken :: !(Maybe Text)
    , _mdUploadType :: !(Maybe Text)
    , _mdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MediaDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdXgafv'
--
-- * 'mdUploadProtocol'
--
-- * 'mdResourceName'
--
-- * 'mdAccessToken'
--
-- * 'mdUploadType'
--
-- * 'mdCallback'
mediaDownload
    :: Text -- ^ 'mdResourceName'
    -> MediaDownload'
mediaDownload pMdResourceName_ =
  MediaDownload''
    { _mdXgafv = Nothing
    , _mdUploadProtocol = Nothing
    , _mdResourceName = pMdResourceName_
    , _mdAccessToken = Nothing
    , _mdUploadType = Nothing
    , _mdCallback = Nothing
    }


-- | V1 error format.
mdXgafv :: Lens' MediaDownload' (Maybe Xgafv)
mdXgafv = lens _mdXgafv (\ s a -> s{_mdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdUploadProtocol :: Lens' MediaDownload' (Maybe Text)
mdUploadProtocol
  = lens _mdUploadProtocol
      (\ s a -> s{_mdUploadProtocol = a})

-- | Name of the media that is being downloaded. See
-- ReadRequest.resource_name.
mdResourceName :: Lens' MediaDownload' Text
mdResourceName
  = lens _mdResourceName
      (\ s a -> s{_mdResourceName = a})

-- | OAuth access token.
mdAccessToken :: Lens' MediaDownload' (Maybe Text)
mdAccessToken
  = lens _mdAccessToken
      (\ s a -> s{_mdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdUploadType :: Lens' MediaDownload' (Maybe Text)
mdUploadType
  = lens _mdUploadType (\ s a -> s{_mdUploadType = a})

-- | JSONP
mdCallback :: Lens' MediaDownload' (Maybe Text)
mdCallback
  = lens _mdCallback (\ s a -> s{_mdCallback = a})

instance GoogleRequest MediaDownload' where
        type Rs MediaDownload' = Media
        type Scopes MediaDownload' = '[]
        requestClient MediaDownload''{..}
          = go _mdResourceName _mdXgafv _mdUploadProtocol
              _mdAccessToken
              _mdUploadType
              _mdCallback
              (Just AltJSON)
              chatService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MediaDownloadResource)
                      mempty

instance GoogleRequest (MediaDownload MediaDownload')
         where
        type Rs (MediaDownload MediaDownload') = Stream
        type Scopes (MediaDownload MediaDownload') =
             Scopes MediaDownload'
        requestClient (MediaDownload MediaDownload''{..})
          = go _mdResourceName _mdXgafv _mdUploadProtocol
              _mdAccessToken
              _mdUploadType
              _mdCallback
              (Just AltMedia)
              chatService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MediaDownloadResource)
                      mempty
