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
-- Module      : Network.Google.Resource.Plus.Moments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.moments.insert@.
module Network.Google.Resource.Plus.Moments.Insert
    (
    -- * REST Resource
      MomentsInsertResource

    -- * Creating a Request
    , momentsInsert
    , MomentsInsert

    -- * Request Lenses
    , miCollection
    , miPayload
    , miDebug
    , miUserId
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.moments.insert@ method which the
-- 'MomentsInsert' request conforms to.
type MomentsInsertResource =
     "plus" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "moments" :>
               Capture "collection" MomentsInsertCollection :>
                 QueryParam "debug" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Moment :> Post '[JSON] Moment

-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ 'momentsInsert' smart constructor.
data MomentsInsert = MomentsInsert
    { _miCollection :: !MomentsInsertCollection
    , _miPayload    :: !Moment
    , _miDebug      :: !(Maybe Bool)
    , _miUserId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miCollection'
--
-- * 'miPayload'
--
-- * 'miDebug'
--
-- * 'miUserId'
momentsInsert
    :: MomentsInsertCollection -- ^ 'miCollection'
    -> Moment -- ^ 'miPayload'
    -> Text -- ^ 'miUserId'
    -> MomentsInsert
momentsInsert pMiCollection_ pMiPayload_ pMiUserId_ =
    MomentsInsert
    { _miCollection = pMiCollection_
    , _miPayload = pMiPayload_
    , _miDebug = Nothing
    , _miUserId = pMiUserId_
    }

-- | The collection to which to write moments.
miCollection :: Lens' MomentsInsert MomentsInsertCollection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | Multipart request metadata.
miPayload :: Lens' MomentsInsert Moment
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | Return the moment as written. Should be used only for debugging.
miDebug :: Lens' MomentsInsert (Maybe Bool)
miDebug = lens _miDebug (\ s a -> s{_miDebug = a})

-- | The ID of the user to record actions for. The only valid values are
-- \"me\" and the ID of the authenticated user.
miUserId :: Lens' MomentsInsert Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

instance GoogleRequest MomentsInsert where
        type Rs MomentsInsert = Moment
        type Scopes MomentsInsert =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient MomentsInsert{..}
          = go _miUserId _miCollection _miDebug (Just AltJSON)
              _miPayload
              plusService
          where go
                  = buildClient (Proxy :: Proxy MomentsInsertResource)
                      mempty
