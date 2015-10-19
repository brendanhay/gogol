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
-- Module      : Network.Google.Resource.Games.Revisions.Check
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the games client is out of date.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.revisions.check@.
module Network.Google.Resource.Games.Revisions.Check
    (
    -- * REST Resource
      RevisionsCheckResource

    -- * Creating a Request
    , revisionsCheck'
    , RevisionsCheck'

    -- * Request Lenses
    , rcClientRevision
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.revisions.check@ method which the
-- 'RevisionsCheck'' request conforms to.
type RevisionsCheckResource =
     "revisions" :>
       "check" :>
         QueryParam "clientRevision" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck'' smart constructor.
newtype RevisionsCheck' = RevisionsCheck'
    { _rcClientRevision :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcClientRevision'
revisionsCheck'
    :: Text -- ^ 'rcClientRevision'
    -> RevisionsCheck'
revisionsCheck' pRcClientRevision_ =
    RevisionsCheck'
    { _rcClientRevision = pRcClientRevision_
    }

-- | The revision of the client SDK used by your application. Format:
-- [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
-- - \"ANDROID\" - Client is running the Android SDK. - \"IOS\" - Client is
-- running the iOS SDK. - \"WEB_APP\" - Client is running as a Web App.
rcClientRevision :: Lens' RevisionsCheck' Text
rcClientRevision
  = lens _rcClientRevision
      (\ s a -> s{_rcClientRevision = a})

instance GoogleRequest RevisionsCheck' where
        type Rs RevisionsCheck' = RevisionCheckResponse
        requestClient RevisionsCheck'{..}
          = go (Just _rcClientRevision) (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RevisionsCheckResource)
                      mempty
