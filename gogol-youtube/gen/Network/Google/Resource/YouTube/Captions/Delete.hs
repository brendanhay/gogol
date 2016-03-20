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
-- Module      : Network.Google.Resource.YouTube.Captions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.delete@.
module Network.Google.Resource.YouTube.Captions.Delete
    (
    -- * REST Resource
      CaptionsDeleteResource

    -- * Creating a Request
    , captionsDelete
    , CaptionsDelete

    -- * Request Lenses
    , cddOnBehalfOf
    , cddOnBehalfOfContentOwner
    , cddId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.delete@ method which the
-- 'CaptionsDelete' request conforms to.
type CaptionsDeleteResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           QueryParam "id" Text :>
             QueryParam "onBehalfOf" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a specified caption track.
--
-- /See:/ 'captionsDelete' smart constructor.
data CaptionsDelete = CaptionsDelete
    { _cddOnBehalfOf             :: !(Maybe Text)
    , _cddOnBehalfOfContentOwner :: !(Maybe Text)
    , _cddId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddOnBehalfOf'
--
-- * 'cddOnBehalfOfContentOwner'
--
-- * 'cddId'
captionsDelete
    :: Text -- ^ 'cddId'
    -> CaptionsDelete
captionsDelete pCddId_ =
    CaptionsDelete
    { _cddOnBehalfOf = Nothing
    , _cddOnBehalfOfContentOwner = Nothing
    , _cddId = pCddId_
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
cddOnBehalfOf :: Lens' CaptionsDelete (Maybe Text)
cddOnBehalfOf
  = lens _cddOnBehalfOf
      (\ s a -> s{_cddOnBehalfOf = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
cddOnBehalfOfContentOwner :: Lens' CaptionsDelete (Maybe Text)
cddOnBehalfOfContentOwner
  = lens _cddOnBehalfOfContentOwner
      (\ s a -> s{_cddOnBehalfOfContentOwner = a})

-- | The id parameter identifies the caption track that is being deleted. The
-- value is a caption track ID as identified by the id property in a
-- caption resource.
cddId :: Lens' CaptionsDelete Text
cddId = lens _cddId (\ s a -> s{_cddId = a})

instance GoogleRequest CaptionsDelete where
        type Rs CaptionsDelete = ()
        requestClient CaptionsDelete{..}
          = go (Just _cddId) _cddOnBehalfOf
              _cddOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CaptionsDeleteResource)
                      mempty
