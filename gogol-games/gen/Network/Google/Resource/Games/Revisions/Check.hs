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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , revisionsCheck
    , RevisionsCheck

    -- * Request Lenses
    , revClientRevision
    , revConsistencyToken
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.revisions.check@ method which the
-- 'RevisionsCheck' request conforms to.
type RevisionsCheckResource =
     "games" :>
       "v1" :>
         "revisions" :>
           "check" :>
             QueryParam "clientRevision" Text :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck' smart constructor.
data RevisionsCheck = RevisionsCheck'
    { _revClientRevision   :: !Text
    , _revConsistencyToken :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'revClientRevision'
--
-- * 'revConsistencyToken'
revisionsCheck
    :: Text -- ^ 'revClientRevision'
    -> RevisionsCheck
revisionsCheck pRevClientRevision_ =
    RevisionsCheck'
    { _revClientRevision = pRevClientRevision_
    , _revConsistencyToken = Nothing
    }

-- | The revision of the client SDK used by your application. Format:
-- [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
-- - \"ANDROID\" - Client is running the Android SDK. - \"IOS\" - Client is
-- running the iOS SDK. - \"WEB_APP\" - Client is running as a Web App.
revClientRevision :: Lens' RevisionsCheck Text
revClientRevision
  = lens _revClientRevision
      (\ s a -> s{_revClientRevision = a})

-- | The last-seen mutation timestamp.
revConsistencyToken :: Lens' RevisionsCheck (Maybe Int64)
revConsistencyToken
  = lens _revConsistencyToken
      (\ s a -> s{_revConsistencyToken = a})
      . mapping _Coerce

instance GoogleRequest RevisionsCheck where
        type Rs RevisionsCheck = RevisionCheckResponse
        type Scopes RevisionsCheck =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient RevisionsCheck'{..}
          = go (Just _revClientRevision) _revConsistencyToken
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RevisionsCheckResource)
                      mempty
