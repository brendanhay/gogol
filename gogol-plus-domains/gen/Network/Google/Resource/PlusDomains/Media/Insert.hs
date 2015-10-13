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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsMediaInsert@.
module Network.Google.Resource.PlusDomains.Media.Insert
    (
    -- * REST Resource
      MediaInsertResource

    -- * Creating a Request
    , mediaInsert'
    , MediaInsert'

    -- * Request Lenses
    , miCollection
    , miPayload
    , miUserId
    , miMedia
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsMediaInsert@ method which the
-- 'MediaInsert'' request conforms to.
type MediaInsertResource =
     "people" :>
       Capture "userId" Text :>
         "media" :>
           Capture "collection" MediaInsertCollection :>
             QueryParam "alt" AltJSON :>
               MultipartRelated '[JSON] Media Stream :>
                 Post '[JSON] Media

-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ 'mediaInsert'' smart constructor.
data MediaInsert' = MediaInsert'
    { _miCollection :: !MediaInsertCollection
    , _miPayload    :: !Media
    , _miUserId     :: !Text
    , _miMedia      :: !Stream
    }

-- | Creates a value of 'MediaInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miCollection'
--
-- * 'miPayload'
--
-- * 'miUserId'
--
-- * 'miMedia'
mediaInsert'
    :: MediaInsertCollection -- ^ 'collection'
    -> Media -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Stream -- ^ 'media'
    -> MediaInsert'
mediaInsert' pMiCollection_ pMiPayload_ pMiUserId_ pMiMedia_ =
    MediaInsert'
    { _miCollection = pMiCollection_
    , _miPayload = pMiPayload_
    , _miUserId = pMiUserId_
    , _miMedia = pMiMedia_
    }

miCollection :: Lens' MediaInsert' MediaInsertCollection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | Multipart request metadata.
miPayload :: Lens' MediaInsert' Media
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | The ID of the user to create the activity on behalf of.
miUserId :: Lens' MediaInsert' Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

miMedia :: Lens' MediaInsert' Stream
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

instance GoogleRequest MediaInsert' where
        type Rs MediaInsert' = Media
        requestClient MediaInsert'{..}
          = go _miUserId _miCollection (Just AltJSON)
              _miPayload
              _miMedia
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy MediaInsertResource)
                      mempty
