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
-- Module      : Network.Google.Resource.PlusDomains.People.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a person\'s profile.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.people.get@.
module Network.Google.Resource.PlusDomains.People.Get
    (
    -- * REST Resource
      PeopleGetResource

    -- * Creating a Request
    , peopleGet'
    , PeopleGet'

    -- * Request Lenses
    , pgUserId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.people.get@ method which the
-- 'PeopleGet'' request conforms to.
type PeopleGetResource =
     "people" :>
       Capture "userId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Person

-- | Get a person\'s profile.
--
-- /See:/ 'peopleGet'' smart constructor.
newtype PeopleGet' = PeopleGet'
    { _pgUserId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgUserId'
peopleGet'
    :: Text -- ^ 'pgUserId'
    -> PeopleGet'
peopleGet' pPgUserId_ =
    PeopleGet'
    { _pgUserId = pPgUserId_
    }

-- | The ID of the person to get the profile for. The special value \"me\"
-- can be used to indicate the authenticated user.
pgUserId :: Lens' PeopleGet' Text
pgUserId = lens _pgUserId (\ s a -> s{_pgUserId = a})

instance GoogleRequest PeopleGet' where
        type Rs PeopleGet' = Person
        requestClient PeopleGet'{..}
          = go _pgUserId (Just AltJSON) plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy PeopleGetResource)
                      mempty
