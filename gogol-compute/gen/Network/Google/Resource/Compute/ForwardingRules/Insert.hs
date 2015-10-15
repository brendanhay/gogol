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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesInsert@.
module Network.Google.Resource.Compute.ForwardingRules.Insert
    (
    -- * REST Resource
      ForwardingRulesInsertResource

    -- * Creating a Request
    , forwardingRulesInsert'
    , ForwardingRulesInsert'

    -- * Request Lenses
    , friProject
    , friPayload
    , friRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesInsert@ method which the
-- 'ForwardingRulesInsert'' request conforms to.
type ForwardingRulesInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] ForwardingRule :>
                 Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'forwardingRulesInsert'' smart constructor.
data ForwardingRulesInsert' = ForwardingRulesInsert'
    { _friProject :: !Text
    , _friPayload :: !ForwardingRule
    , _friRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'friProject'
--
-- * 'friPayload'
--
-- * 'friRegion'
forwardingRulesInsert'
    :: Text -- ^ 'project'
    -> ForwardingRule -- ^ 'payload'
    -> Text -- ^ 'region'
    -> ForwardingRulesInsert'
forwardingRulesInsert' pFriProject_ pFriPayload_ pFriRegion_ =
    ForwardingRulesInsert'
    { _friProject = pFriProject_
    , _friPayload = pFriPayload_
    , _friRegion = pFriRegion_
    }

-- | Name of the project scoping this request.
friProject :: Lens' ForwardingRulesInsert' Text
friProject
  = lens _friProject (\ s a -> s{_friProject = a})

-- | Multipart request metadata.
friPayload :: Lens' ForwardingRulesInsert' ForwardingRule
friPayload
  = lens _friPayload (\ s a -> s{_friPayload = a})

-- | Name of the region scoping this request.
friRegion :: Lens' ForwardingRulesInsert' Text
friRegion
  = lens _friRegion (\ s a -> s{_friRegion = a})

instance GoogleRequest ForwardingRulesInsert' where
        type Rs ForwardingRulesInsert' = Operation
        requestClient ForwardingRulesInsert'{..}
          = go _friProject _friRegion (Just AltJSON)
              _friPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesInsertResource)
                      mempty
