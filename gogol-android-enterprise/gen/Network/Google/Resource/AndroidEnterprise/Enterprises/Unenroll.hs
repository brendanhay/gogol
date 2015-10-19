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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unenrolls an enterprise from the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.unenroll@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
    (
    -- * REST Resource
      EnterprisesUnenrollResource

    -- * Creating a Request
    , enterprisesUnenroll'
    , EnterprisesUnenroll'

    -- * Request Lenses
    , euEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.unenroll@ method which the
-- 'EnterprisesUnenroll'' request conforms to.
type EnterprisesUnenrollResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "unenroll" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ 'enterprisesUnenroll'' smart constructor.
newtype EnterprisesUnenroll' = EnterprisesUnenroll'
    { _euEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesUnenroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euEnterpriseId'
enterprisesUnenroll'
    :: Text -- ^ 'euEnterpriseId'
    -> EnterprisesUnenroll'
enterprisesUnenroll' pEuEnterpriseId_ =
    EnterprisesUnenroll'
    { _euEnterpriseId = pEuEnterpriseId_
    }

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EnterprisesUnenroll' Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

instance GoogleRequest EnterprisesUnenroll' where
        type Rs EnterprisesUnenroll' = ()
        requestClient EnterprisesUnenroll'{..}
          = go _euEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesUnenrollResource)
                      mempty
