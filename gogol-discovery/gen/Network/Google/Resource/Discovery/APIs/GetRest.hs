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
-- Module      : Network.Google.Resource.Discovery.APIs.GetRest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the description of a particular version of an api.
--
-- /See:/ <https://developers.google.com/discovery/ API Discovery Service Reference> for @discovery.apis.getRest@.
module Network.Google.Resource.Discovery.APIs.GetRest
    (
    -- * REST Resource
      APIsGetRestResource

    -- * Creating a Request
    , apisGetRest
    , APIsGetRest

    -- * Request Lenses
    , agrVersion
    , agrAPI
    ) where

import Network.Google.Discovery.Types
import Network.Google.Prelude

-- | A resource alias for @discovery.apis.getRest@ method which the
-- 'APIsGetRest' request conforms to.
type APIsGetRestResource =
     "discovery" :>
       "v1" :>
         "apis" :>
           Capture "api" Text :>
             Capture "version" Text :>
               "rest" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] RestDescription

-- | Retrieve the description of a particular version of an api.
--
-- /See:/ 'apisGetRest' smart constructor.
data APIsGetRest =
  APIsGetRest'
    { _agrVersion :: !Text
    , _agrAPI :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APIsGetRest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agrVersion'
--
-- * 'agrAPI'
apisGetRest
    :: Text -- ^ 'agrVersion'
    -> Text -- ^ 'agrAPI'
    -> APIsGetRest
apisGetRest pAgrVersion_ pAgrAPI_ =
  APIsGetRest' {_agrVersion = pAgrVersion_, _agrAPI = pAgrAPI_}


-- | The version of the API.
agrVersion :: Lens' APIsGetRest Text
agrVersion
  = lens _agrVersion (\ s a -> s{_agrVersion = a})

-- | The name of the API.
agrAPI :: Lens' APIsGetRest Text
agrAPI = lens _agrAPI (\ s a -> s{_agrAPI = a})

instance GoogleRequest APIsGetRest where
        type Rs APIsGetRest = RestDescription
        type Scopes APIsGetRest = '[]
        requestClient APIsGetRest'{..}
          = go _agrAPI _agrVersion (Just AltJSON)
              discoveryService
          where go
                  = buildClient (Proxy :: Proxy APIsGetRestResource)
                      mempty
