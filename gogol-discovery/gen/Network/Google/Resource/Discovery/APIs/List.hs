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
-- Module      : Network.Google.Resource.Discovery.APIs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference> for @discovery.apis.list@.
module Network.Google.Resource.Discovery.APIs.List
    (
    -- * REST Resource
      APIsListResource

    -- * Creating a Request
    , apisList
    , APIsList

    -- * Request Lenses
    , alPreferred
    , alName
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude

-- | A resource alias for @discovery.apis.list@ method which the
-- 'APIsList' request conforms to.
type APIsListResource =
     "discovery" :>
       "v1" :>
         "apis" :>
           QueryParam "preferred" Bool :>
             QueryParam "name" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] DirectoryList

-- | Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ 'apisList' smart constructor.
data APIsList = APIsList'
    { _alPreferred :: !Bool
    , _alName      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alPreferred'
--
-- * 'alName'
apisList
    :: APIsList
apisList =
    APIsList'
    { _alPreferred = False
    , _alName = Nothing
    }

-- | Return only the preferred version of an API.
alPreferred :: Lens' APIsList Bool
alPreferred
  = lens _alPreferred (\ s a -> s{_alPreferred = a})

-- | Only include APIs with the given name.
alName :: Lens' APIsList (Maybe Text)
alName = lens _alName (\ s a -> s{_alName = a})

instance GoogleRequest APIsList where
        type Rs APIsList = DirectoryList
        type Scopes APIsList = '[]
        requestClient APIsList'{..}
          = go (Just _alPreferred) _alName (Just AltJSON)
              discoveryService
          where go
                  = buildClient (Proxy :: Proxy APIsListResource)
                      mempty
