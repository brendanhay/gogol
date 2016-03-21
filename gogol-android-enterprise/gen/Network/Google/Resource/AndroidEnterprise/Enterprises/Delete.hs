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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the binding between the EMM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.delete@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteResource

    -- * Creating a Request
    , enterprisesDelete
    , EnterprisesDelete

    -- * Request Lenses
    , edEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.delete@ method which the
-- 'EnterprisesDelete' request conforms to.
type EnterprisesDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the binding between the EMM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ 'enterprisesDelete' smart constructor.
newtype EnterprisesDelete = EnterprisesDelete'
    { _edEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edEnterpriseId'
enterprisesDelete
    :: Text -- ^ 'edEnterpriseId'
    -> EnterprisesDelete
enterprisesDelete pEdEnterpriseId_ =
    EnterprisesDelete'
    { _edEnterpriseId = pEdEnterpriseId_
    }

-- | The ID of the enterprise.
edEnterpriseId :: Lens' EnterprisesDelete Text
edEnterpriseId
  = lens _edEnterpriseId
      (\ s a -> s{_edEnterpriseId = a})

instance GoogleRequest EnterprisesDelete where
        type Rs EnterprisesDelete = ()
        type Scopes EnterprisesDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesDelete'{..}
          = go _edEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDeleteResource)
                      mempty
