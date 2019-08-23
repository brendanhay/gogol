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
-- Module      : Network.Google.Resource.Compute.Interconnects.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified interconnect. Get a list of available
-- interconnects by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.get@.
module Network.Google.Resource.Compute.Interconnects.Get
    (
    -- * REST Resource
      InterconnectsGetResource

    -- * Creating a Request
    , interconnectsGet
    , InterconnectsGet

    -- * Request Lenses
    , iProject
    , iInterconnect
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnects.get@ method which the
-- 'InterconnectsGet' request conforms to.
type InterconnectsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 Capture "interconnect" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Interconnect

-- | Returns the specified interconnect. Get a list of available
-- interconnects by making a list() request.
--
-- /See:/ 'interconnectsGet' smart constructor.
data InterconnectsGet =
  InterconnectsGet'
    { _iProject      :: !Text
    , _iInterconnect :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iProject'
--
-- * 'iInterconnect'
interconnectsGet
    :: Text -- ^ 'iProject'
    -> Text -- ^ 'iInterconnect'
    -> InterconnectsGet
interconnectsGet pIProject_ pIInterconnect_ =
  InterconnectsGet' {_iProject = pIProject_, _iInterconnect = pIInterconnect_}


-- | Project ID for this request.
iProject :: Lens' InterconnectsGet Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | Name of the interconnect to return.
iInterconnect :: Lens' InterconnectsGet Text
iInterconnect
  = lens _iInterconnect
      (\ s a -> s{_iInterconnect = a})

instance GoogleRequest InterconnectsGet where
        type Rs InterconnectsGet = Interconnect
        type Scopes InterconnectsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectsGet'{..}
          = go _iProject _iInterconnect (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsGetResource)
                      mempty
