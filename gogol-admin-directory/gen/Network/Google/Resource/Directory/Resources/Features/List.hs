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
-- Module      : Network.Google.Resource.Directory.Resources.Features.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of features for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.list@.
module Network.Google.Resource.Directory.Resources.Features.List
    (
    -- * REST Resource
      ResourcesFeaturesListResource

    -- * Creating a Request
    , resourcesFeaturesList
    , ResourcesFeaturesList

    -- * Request Lenses
    , rflCustomer
    , rflPageToken
    , rflMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.list@ method which the
-- 'ResourcesFeaturesList' request conforms to.
type ResourcesFeaturesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Features

-- | Retrieves a list of features for an account.
--
-- /See:/ 'resourcesFeaturesList' smart constructor.
data ResourcesFeaturesList =
  ResourcesFeaturesList'
    { _rflCustomer   :: !Text
    , _rflPageToken  :: !(Maybe Text)
    , _rflMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesFeaturesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rflCustomer'
--
-- * 'rflPageToken'
--
-- * 'rflMaxResults'
resourcesFeaturesList
    :: Text -- ^ 'rflCustomer'
    -> ResourcesFeaturesList
resourcesFeaturesList pRflCustomer_ =
  ResourcesFeaturesList'
    { _rflCustomer = pRflCustomer_
    , _rflPageToken = Nothing
    , _rflMaxResults = Nothing
    }

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rflCustomer :: Lens' ResourcesFeaturesList Text
rflCustomer
  = lens _rflCustomer (\ s a -> s{_rflCustomer = a})

-- | Token to specify the next page in the list.
rflPageToken :: Lens' ResourcesFeaturesList (Maybe Text)
rflPageToken
  = lens _rflPageToken (\ s a -> s{_rflPageToken = a})

-- | Maximum number of results to return.
rflMaxResults :: Lens' ResourcesFeaturesList (Maybe Int32)
rflMaxResults
  = lens _rflMaxResults
      (\ s a -> s{_rflMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ResourcesFeaturesList where
        type Rs ResourcesFeaturesList = Features
        type Scopes ResourcesFeaturesList =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesFeaturesList'{..}
          = go _rflCustomer _rflPageToken _rflMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesListResource)
                      mempty
