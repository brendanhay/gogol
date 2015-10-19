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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.delete@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteResource

    -- * Creating a Request
    , enterprisesDelete'
    , EnterprisesDelete'

    -- * Request Lenses
    , eddEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.delete@ method which the
-- 'EnterprisesDelete'' request conforms to.
type EnterprisesDeleteResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ 'enterprisesDelete'' smart constructor.
newtype EnterprisesDelete' = EnterprisesDelete'
    { _eddEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddEnterpriseId'
enterprisesDelete'
    :: Text -- ^ 'eddEnterpriseId'
    -> EnterprisesDelete'
enterprisesDelete' pEddEnterpriseId_ =
    EnterprisesDelete'
    { _eddEnterpriseId = pEddEnterpriseId_
    }

-- | The ID of the enterprise.
eddEnterpriseId :: Lens' EnterprisesDelete' Text
eddEnterpriseId
  = lens _eddEnterpriseId
      (\ s a -> s{_eddEnterpriseId = a})

instance GoogleRequest EnterprisesDelete' where
        type Rs EnterprisesDelete' = ()
        requestClient EnterprisesDelete'{..}
          = go _eddEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDeleteResource)
                      mempty
