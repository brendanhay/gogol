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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the top-level comment in a comment thread.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.commentThreads.update@.
module Network.Google.Resource.YouTube.CommentThreads.Update
    (
    -- * REST Resource
      CommentThreadsUpdateResource

    -- * Creating a Request
    , commentThreadsUpdate
    , CommentThreadsUpdate

    -- * Request Lenses
    , ctuPart
    , ctuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.commentThreads.update@ method which the
-- 'CommentThreadsUpdate' request conforms to.
type CommentThreadsUpdateResource =
     "youtube" :>
       "v3" :>
         "commentThreads" :>
           QueryParam "part" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CommentThread :>
                 Put '[JSON] CommentThread

-- | Modifies the top-level comment in a comment thread.
--
-- /See:/ 'commentThreadsUpdate' smart constructor.
data CommentThreadsUpdate = CommentThreadsUpdate
    { _ctuPart    :: !Text
    , _ctuPayload :: !CommentThread
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuPart'
--
-- * 'ctuPayload'
commentThreadsUpdate
    :: Text -- ^ 'ctuPart'
    -> CommentThread -- ^ 'ctuPayload'
    -> CommentThreadsUpdate
commentThreadsUpdate pCtuPart_ pCtuPayload_ =
    CommentThreadsUpdate
    { _ctuPart = pCtuPart_
    , _ctuPayload = pCtuPayload_
    }

-- | The part parameter specifies a comma-separated list of commentThread
-- resource properties that the API response will include. You must at
-- least include the snippet part in the parameter value since that part
-- contains all of the properties that the API request can update.
ctuPart :: Lens' CommentThreadsUpdate Text
ctuPart = lens _ctuPart (\ s a -> s{_ctuPart = a})

-- | Multipart request metadata.
ctuPayload :: Lens' CommentThreadsUpdate CommentThread
ctuPayload
  = lens _ctuPayload (\ s a -> s{_ctuPayload = a})

instance GoogleRequest CommentThreadsUpdate where
        type Rs CommentThreadsUpdate = CommentThread
        requestClient CommentThreadsUpdate{..}
          = go (Just _ctuPart) (Just AltJSON) _ctuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentThreadsUpdateResource)
                      mempty
