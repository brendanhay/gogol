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
-- Module      : Network.Google.Resource.PlusDomains.Media.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.media.insert@.
module Network.Google.Resource.PlusDomains.Media.Insert
    (
    -- * REST Resource
      MediaInsertResource

    -- * Creating a Request
    , mediaInsert
    , MediaInsert

    -- * Request Lenses
    , miCollection
    , miPayload
    , miUserId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.media.insert@ method which the
-- 'MediaInsert' request conforms to.
type MediaInsertResource =
     "plusDomains" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "media" :>
               Capture "collection" MediaInsertCollection :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Media :> Post '[JSON] Media
       :<|>
       "upload" :>
         "plusDomains" :>
           "v1" :>
             "people" :>
               Capture "userId" Text :>
                 "media" :>
                   Capture "collection" MediaInsertCollection :>
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" Multipart :>
                         MultipartRelated '[JSON] Media :> Post '[JSON] Media

-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ 'mediaInsert' smart constructor.
data MediaInsert =
  MediaInsert'
    { _miCollection :: !MediaInsertCollection
    , _miPayload    :: !Media
    , _miUserId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MediaInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miCollection'
--
-- * 'miPayload'
--
-- * 'miUserId'
mediaInsert
    :: MediaInsertCollection -- ^ 'miCollection'
    -> Media -- ^ 'miPayload'
    -> Text -- ^ 'miUserId'
    -> MediaInsert
mediaInsert pMiCollection_ pMiPayload_ pMiUserId_ =
  MediaInsert'
    { _miCollection = pMiCollection_
    , _miPayload = pMiPayload_
    , _miUserId = pMiUserId_
    }


miCollection :: Lens' MediaInsert MediaInsertCollection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | Multipart request metadata.
miPayload :: Lens' MediaInsert Media
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | The ID of the user to create the activity on behalf of.
miUserId :: Lens' MediaInsert Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

instance GoogleRequest MediaInsert where
        type Rs MediaInsert = Media
        type Scopes MediaInsert =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me",
               "https://www.googleapis.com/auth/plus.media.upload"]
        requestClient MediaInsert'{..}
          = go _miUserId _miCollection (Just AltJSON)
              _miPayload
              plusDomainsService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MediaInsertResource)
                      mempty

instance GoogleRequest (MediaUpload MediaInsert)
         where
        type Rs (MediaUpload MediaInsert) = Media
        type Scopes (MediaUpload MediaInsert) =
             Scopes MediaInsert
        requestClient (MediaUpload MediaInsert'{..} body)
          = go _miUserId _miCollection (Just AltJSON)
              (Just Multipart)
              _miPayload
              body
              plusDomainsService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MediaInsertResource)
                      mempty
