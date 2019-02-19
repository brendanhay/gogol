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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Rename
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.rename@.
module Network.Google.Resource.Directory.Resources.Features.Rename
    (
    -- * REST Resource
      ResourcesFeaturesRenameResource

    -- * Creating a Request
    , resourcesFeaturesRename
    , ResourcesFeaturesRename

    -- * Request Lenses
    , rfrPayload
    , rfrCustomer
    , rfrOldName
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.rename@ method which the
-- 'ResourcesFeaturesRename' request conforms to.
type ResourcesFeaturesRenameResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "oldName" Text :>
                     "rename" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FeatureRename :> Post '[JSON] ()

-- | Renames a feature.
--
-- /See:/ 'resourcesFeaturesRename' smart constructor.
data ResourcesFeaturesRename =
  ResourcesFeaturesRename'
    { _rfrPayload  :: !FeatureRename
    , _rfrCustomer :: !Text
    , _rfrOldName  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesFeaturesRename' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrPayload'
--
-- * 'rfrCustomer'
--
-- * 'rfrOldName'
resourcesFeaturesRename
    :: FeatureRename -- ^ 'rfrPayload'
    -> Text -- ^ 'rfrCustomer'
    -> Text -- ^ 'rfrOldName'
    -> ResourcesFeaturesRename
resourcesFeaturesRename pRfrPayload_ pRfrCustomer_ pRfrOldName_ =
  ResourcesFeaturesRename'
    { _rfrPayload = pRfrPayload_
    , _rfrCustomer = pRfrCustomer_
    , _rfrOldName = pRfrOldName_
    }

-- | Multipart request metadata.
rfrPayload :: Lens' ResourcesFeaturesRename FeatureRename
rfrPayload
  = lens _rfrPayload (\ s a -> s{_rfrPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfrCustomer :: Lens' ResourcesFeaturesRename Text
rfrCustomer
  = lens _rfrCustomer (\ s a -> s{_rfrCustomer = a})

-- | The unique ID of the feature to rename.
rfrOldName :: Lens' ResourcesFeaturesRename Text
rfrOldName
  = lens _rfrOldName (\ s a -> s{_rfrOldName = a})

instance GoogleRequest ResourcesFeaturesRename where
        type Rs ResourcesFeaturesRename = ()
        type Scopes ResourcesFeaturesRename =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesRename'{..}
          = go _rfrCustomer _rfrOldName (Just AltJSON)
              _rfrPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesRenameResource)
                      mempty
