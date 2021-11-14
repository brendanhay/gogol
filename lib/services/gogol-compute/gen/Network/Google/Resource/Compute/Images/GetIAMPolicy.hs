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
-- Module      : Network.Google.Resource.Compute.Images.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.getIamPolicy@.
module Network.Google.Resource.Compute.Images.GetIAMPolicy
    (
    -- * REST Resource
      ImagesGetIAMPolicyResource

    -- * Creating a Request
    , imagesGetIAMPolicy
    , ImagesGetIAMPolicy

    -- * Request Lenses
    , igipProject
    , igipResource
    , igipOptionsRequestedPolicyVersion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.getIamPolicy@ method which the
-- 'ImagesGetIAMPolicy' request conforms to.
type ImagesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "optionsRequestedPolicyVersion"
                       (Textual Int32)
                       :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'imagesGetIAMPolicy' smart constructor.
data ImagesGetIAMPolicy =
  ImagesGetIAMPolicy'
    { _igipProject :: !Text
    , _igipResource :: !Text
    , _igipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igipProject'
--
-- * 'igipResource'
--
-- * 'igipOptionsRequestedPolicyVersion'
imagesGetIAMPolicy
    :: Text -- ^ 'igipProject'
    -> Text -- ^ 'igipResource'
    -> ImagesGetIAMPolicy
imagesGetIAMPolicy pIgipProject_ pIgipResource_ =
  ImagesGetIAMPolicy'
    { _igipProject = pIgipProject_
    , _igipResource = pIgipResource_
    , _igipOptionsRequestedPolicyVersion = Nothing
    }


-- | Project ID for this request.
igipProject :: Lens' ImagesGetIAMPolicy Text
igipProject
  = lens _igipProject (\ s a -> s{_igipProject = a})

-- | Name or id of the resource for this request.
igipResource :: Lens' ImagesGetIAMPolicy Text
igipResource
  = lens _igipResource (\ s a -> s{_igipResource = a})

-- | Requested IAM Policy version.
igipOptionsRequestedPolicyVersion :: Lens' ImagesGetIAMPolicy (Maybe Int32)
igipOptionsRequestedPolicyVersion
  = lens _igipOptionsRequestedPolicyVersion
      (\ s a -> s{_igipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

instance GoogleRequest ImagesGetIAMPolicy where
        type Rs ImagesGetIAMPolicy = Policy
        type Scopes ImagesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ImagesGetIAMPolicy'{..}
          = go _igipProject _igipResource
              _igipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesGetIAMPolicyResource)
                      mempty
