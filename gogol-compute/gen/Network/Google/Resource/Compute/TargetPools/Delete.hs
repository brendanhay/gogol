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
-- Module      : Network.Google.Resource.Compute.TargetPools.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetPool resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.delete@.
module Network.Google.Resource.Compute.TargetPools.Delete
    (
    -- * REST Resource
      TargetPoolsDeleteResource

    -- * Creating a Request
    , targetPoolsDelete'
    , TargetPoolsDelete'

    -- * Request Lenses
    , tpdProject
    , tpdTargetPool
    , tpdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.delete@ method which the
-- 'TargetPoolsDelete'' request conforms to.
type TargetPoolsDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetPool resource.
--
-- /See:/ 'targetPoolsDelete'' smart constructor.
data TargetPoolsDelete' = TargetPoolsDelete'
    { _tpdProject    :: !Text
    , _tpdTargetPool :: !Text
    , _tpdRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpdProject'
--
-- * 'tpdTargetPool'
--
-- * 'tpdRegion'
targetPoolsDelete'
    :: Text -- ^ 'tpdProject'
    -> Text -- ^ 'tpdTargetPool'
    -> Text -- ^ 'tpdRegion'
    -> TargetPoolsDelete'
targetPoolsDelete' pTpdProject_ pTpdTargetPool_ pTpdRegion_ =
    TargetPoolsDelete'
    { _tpdProject = pTpdProject_
    , _tpdTargetPool = pTpdTargetPool_
    , _tpdRegion = pTpdRegion_
    }

-- | Name of the project scoping this request.
tpdProject :: Lens' TargetPoolsDelete' Text
tpdProject
  = lens _tpdProject (\ s a -> s{_tpdProject = a})

-- | Name of the TargetPool resource to delete.
tpdTargetPool :: Lens' TargetPoolsDelete' Text
tpdTargetPool
  = lens _tpdTargetPool
      (\ s a -> s{_tpdTargetPool = a})

-- | Name of the region scoping this request.
tpdRegion :: Lens' TargetPoolsDelete' Text
tpdRegion
  = lens _tpdRegion (\ s a -> s{_tpdRegion = a})

instance GoogleRequest TargetPoolsDelete' where
        type Rs TargetPoolsDelete' = Operation
        requestClient TargetPoolsDelete'{..}
          = go _tpdProject _tpdRegion _tpdTargetPool
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsDeleteResource)
                      mempty
