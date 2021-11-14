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
-- Module      : Network.Google.Resource.Compute.Snapshots.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.getIamPolicy@.
module Network.Google.Resource.Compute.Snapshots.GetIAMPolicy
    (
    -- * REST Resource
      SnapshotsGetIAMPolicyResource

    -- * Creating a Request
    , snapshotsGetIAMPolicy
    , SnapshotsGetIAMPolicy

    -- * Request Lenses
    , sgiampProject
    , sgiampResource
    , sgiampOptionsRequestedPolicyVersion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.snapshots.getIamPolicy@ method which the
-- 'SnapshotsGetIAMPolicy' request conforms to.
type SnapshotsGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "optionsRequestedPolicyVersion"
                       (Textual Int32)
                       :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'snapshotsGetIAMPolicy' smart constructor.
data SnapshotsGetIAMPolicy =
  SnapshotsGetIAMPolicy'
    { _sgiampProject :: !Text
    , _sgiampResource :: !Text
    , _sgiampOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgiampProject'
--
-- * 'sgiampResource'
--
-- * 'sgiampOptionsRequestedPolicyVersion'
snapshotsGetIAMPolicy
    :: Text -- ^ 'sgiampProject'
    -> Text -- ^ 'sgiampResource'
    -> SnapshotsGetIAMPolicy
snapshotsGetIAMPolicy pSgiampProject_ pSgiampResource_ =
  SnapshotsGetIAMPolicy'
    { _sgiampProject = pSgiampProject_
    , _sgiampResource = pSgiampResource_
    , _sgiampOptionsRequestedPolicyVersion = Nothing
    }


-- | Project ID for this request.
sgiampProject :: Lens' SnapshotsGetIAMPolicy Text
sgiampProject
  = lens _sgiampProject
      (\ s a -> s{_sgiampProject = a})

-- | Name or id of the resource for this request.
sgiampResource :: Lens' SnapshotsGetIAMPolicy Text
sgiampResource
  = lens _sgiampResource
      (\ s a -> s{_sgiampResource = a})

-- | Requested IAM Policy version.
sgiampOptionsRequestedPolicyVersion :: Lens' SnapshotsGetIAMPolicy (Maybe Int32)
sgiampOptionsRequestedPolicyVersion
  = lens _sgiampOptionsRequestedPolicyVersion
      (\ s a ->
         s{_sgiampOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

instance GoogleRequest SnapshotsGetIAMPolicy where
        type Rs SnapshotsGetIAMPolicy = Policy
        type Scopes SnapshotsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SnapshotsGetIAMPolicy'{..}
          = go _sgiampProject _sgiampResource
              _sgiampOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsGetIAMPolicyResource)
                      mempty
