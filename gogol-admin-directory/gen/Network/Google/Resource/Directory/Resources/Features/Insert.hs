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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.insert@.
module Network.Google.Resource.Directory.Resources.Features.Insert
    (
    -- * REST Resource
      ResourcesFeaturesInsertResource

    -- * Creating a Request
    , resourcesFeaturesInsert
    , ResourcesFeaturesInsert

    -- * Request Lenses
    , rfiPayload
    , rfiCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.insert@ method which the
-- 'ResourcesFeaturesInsert' request conforms to.
type ResourcesFeaturesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Feature :> Post '[JSON] Feature

-- | Inserts a feature.
--
-- /See:/ 'resourcesFeaturesInsert' smart constructor.
data ResourcesFeaturesInsert =
  ResourcesFeaturesInsert'
    { _rfiPayload  :: !Feature
    , _rfiCustomer :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesFeaturesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiPayload'
--
-- * 'rfiCustomer'
resourcesFeaturesInsert
    :: Feature -- ^ 'rfiPayload'
    -> Text -- ^ 'rfiCustomer'
    -> ResourcesFeaturesInsert
resourcesFeaturesInsert pRfiPayload_ pRfiCustomer_ =
  ResourcesFeaturesInsert'
    {_rfiPayload = pRfiPayload_, _rfiCustomer = pRfiCustomer_}

-- | Multipart request metadata.
rfiPayload :: Lens' ResourcesFeaturesInsert Feature
rfiPayload
  = lens _rfiPayload (\ s a -> s{_rfiPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfiCustomer :: Lens' ResourcesFeaturesInsert Text
rfiCustomer
  = lens _rfiCustomer (\ s a -> s{_rfiCustomer = a})

instance GoogleRequest ResourcesFeaturesInsert where
        type Rs ResourcesFeaturesInsert = Feature
        type Scopes ResourcesFeaturesInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesInsert'{..}
          = go _rfiCustomer (Just AltJSON) _rfiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesInsertResource)
                      mempty
