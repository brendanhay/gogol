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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on the specified resource. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.setLabels@.
module Network.Google.Resource.Compute.GlobalForwardingRules.SetLabels
    (
    -- * REST Resource
      GlobalForwardingRulesSetLabelsResource

    -- * Creating a Request
    , globalForwardingRulesSetLabels
    , GlobalForwardingRulesSetLabels

    -- * Request Lenses
    , gfrslProject
    , gfrslPayload
    , gfrslResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.setLabels@ method which the
-- 'GlobalForwardingRulesSetLabels' request conforms to.
type GlobalForwardingRulesSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "resource" Text :>
                   "setLabels" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetLabelsRequest :>
                         Post '[JSON] Operation

-- | Sets the labels on the specified resource. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ 'globalForwardingRulesSetLabels' smart constructor.
data GlobalForwardingRulesSetLabels =
  GlobalForwardingRulesSetLabels'
    { _gfrslProject :: !Text
    , _gfrslPayload :: !GlobalSetLabelsRequest
    , _gfrslResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalForwardingRulesSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrslProject'
--
-- * 'gfrslPayload'
--
-- * 'gfrslResource'
globalForwardingRulesSetLabels
    :: Text -- ^ 'gfrslProject'
    -> GlobalSetLabelsRequest -- ^ 'gfrslPayload'
    -> Text -- ^ 'gfrslResource'
    -> GlobalForwardingRulesSetLabels
globalForwardingRulesSetLabels pGfrslProject_ pGfrslPayload_ pGfrslResource_ =
  GlobalForwardingRulesSetLabels'
    { _gfrslProject = pGfrslProject_
    , _gfrslPayload = pGfrslPayload_
    , _gfrslResource = pGfrslResource_
    }


-- | Project ID for this request.
gfrslProject :: Lens' GlobalForwardingRulesSetLabels Text
gfrslProject
  = lens _gfrslProject (\ s a -> s{_gfrslProject = a})

-- | Multipart request metadata.
gfrslPayload :: Lens' GlobalForwardingRulesSetLabels GlobalSetLabelsRequest
gfrslPayload
  = lens _gfrslPayload (\ s a -> s{_gfrslPayload = a})

-- | Name or id of the resource for this request.
gfrslResource :: Lens' GlobalForwardingRulesSetLabels Text
gfrslResource
  = lens _gfrslResource
      (\ s a -> s{_gfrslResource = a})

instance GoogleRequest GlobalForwardingRulesSetLabels
         where
        type Rs GlobalForwardingRulesSetLabels = Operation
        type Scopes GlobalForwardingRulesSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalForwardingRulesSetLabels'{..}
          = go _gfrslProject _gfrslResource (Just AltJSON)
              _gfrslPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalForwardingRulesSetLabelsResource)
                      mempty
