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
-- Module      : Network.Google.Resource.Compute.TargetPools.SetBackup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes a backup target pool\'s configurations.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.setBackup@.
module Network.Google.Resource.Compute.TargetPools.SetBackup
    (
    -- * REST Resource
      TargetPoolsSetBackupResource

    -- * Creating a Request
    , targetPoolsSetBackup
    , TargetPoolsSetBackup

    -- * Request Lenses
    , tpsbProject
    , tpsbTargetPool
    , tpsbPayload
    , tpsbFailoverRatio
    , tpsbRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.setBackup@ method which the
-- 'TargetPoolsSetBackup' request conforms to.
type TargetPoolsSetBackupResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "setBackup" :>
                       QueryParam "failoverRatio" (Textual Double) :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetReference :>
                             Post '[JSON] Operation

-- | Changes a backup target pool\'s configurations.
--
-- /See:/ 'targetPoolsSetBackup' smart constructor.
data TargetPoolsSetBackup = TargetPoolsSetBackup'
    { _tpsbProject       :: !Text
    , _tpsbTargetPool    :: !Text
    , _tpsbPayload       :: !TargetReference
    , _tpsbFailoverRatio :: !(Maybe (Textual Double))
    , _tpsbRegion        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsSetBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpsbProject'
--
-- * 'tpsbTargetPool'
--
-- * 'tpsbPayload'
--
-- * 'tpsbFailoverRatio'
--
-- * 'tpsbRegion'
targetPoolsSetBackup
    :: Text -- ^ 'tpsbProject'
    -> Text -- ^ 'tpsbTargetPool'
    -> TargetReference -- ^ 'tpsbPayload'
    -> Text -- ^ 'tpsbRegion'
    -> TargetPoolsSetBackup
targetPoolsSetBackup pTpsbProject_ pTpsbTargetPool_ pTpsbPayload_ pTpsbRegion_ =
    TargetPoolsSetBackup'
    { _tpsbProject = pTpsbProject_
    , _tpsbTargetPool = pTpsbTargetPool_
    , _tpsbPayload = pTpsbPayload_
    , _tpsbFailoverRatio = Nothing
    , _tpsbRegion = pTpsbRegion_
    }

-- | Project ID for this request.
tpsbProject :: Lens' TargetPoolsSetBackup Text
tpsbProject
  = lens _tpsbProject (\ s a -> s{_tpsbProject = a})

-- | Name of the TargetPool resource to set a backup pool for.
tpsbTargetPool :: Lens' TargetPoolsSetBackup Text
tpsbTargetPool
  = lens _tpsbTargetPool
      (\ s a -> s{_tpsbTargetPool = a})

-- | Multipart request metadata.
tpsbPayload :: Lens' TargetPoolsSetBackup TargetReference
tpsbPayload
  = lens _tpsbPayload (\ s a -> s{_tpsbPayload = a})

-- | New failoverRatio value for the target pool.
tpsbFailoverRatio :: Lens' TargetPoolsSetBackup (Maybe Double)
tpsbFailoverRatio
  = lens _tpsbFailoverRatio
      (\ s a -> s{_tpsbFailoverRatio = a})
      . mapping _Coerce

-- | Name of the region scoping this request.
tpsbRegion :: Lens' TargetPoolsSetBackup Text
tpsbRegion
  = lens _tpsbRegion (\ s a -> s{_tpsbRegion = a})

instance GoogleRequest TargetPoolsSetBackup where
        type Rs TargetPoolsSetBackup = Operation
        type Scopes TargetPoolsSetBackup =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsSetBackup'{..}
          = go _tpsbProject _tpsbRegion _tpsbTargetPool
              _tpsbFailoverRatio
              (Just AltJSON)
              _tpsbPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsSetBackupResource)
                      mempty
