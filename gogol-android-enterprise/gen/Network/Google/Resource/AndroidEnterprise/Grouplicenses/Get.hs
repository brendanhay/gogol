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
-- Module      : Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenses.get@.
module Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
    (
    -- * REST Resource
      GrouplicensesGetResource

    -- * Creating a Request
    , grouplicensesGet
    , GrouplicensesGet

    -- * Request Lenses
    , ggEnterpriseId
    , ggGroupLicenseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.grouplicenses.get@ method which the
-- 'GrouplicensesGet' request conforms to.
type GrouplicensesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] GroupLicense

-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ 'grouplicensesGet' smart constructor.
data GrouplicensesGet = GrouplicensesGet
    { _ggEnterpriseId   :: !Text
    , _ggGroupLicenseId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicensesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggEnterpriseId'
--
-- * 'ggGroupLicenseId'
grouplicensesGet
    :: Text -- ^ 'ggEnterpriseId'
    -> Text -- ^ 'ggGroupLicenseId'
    -> GrouplicensesGet
grouplicensesGet pGgEnterpriseId_ pGgGroupLicenseId_ =
    GrouplicensesGet
    { _ggEnterpriseId = pGgEnterpriseId_
    , _ggGroupLicenseId = pGgGroupLicenseId_
    }

-- | The ID of the enterprise.
ggEnterpriseId :: Lens' GrouplicensesGet Text
ggEnterpriseId
  = lens _ggEnterpriseId
      (\ s a -> s{_ggEnterpriseId = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
ggGroupLicenseId :: Lens' GrouplicensesGet Text
ggGroupLicenseId
  = lens _ggGroupLicenseId
      (\ s a -> s{_ggGroupLicenseId = a})

instance GoogleRequest GrouplicensesGet where
        type Rs GrouplicensesGet = GroupLicense
        requestClient GrouplicensesGet{..}
          = go _ggEnterpriseId _ggGroupLicenseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy GrouplicensesGetResource)
                      mempty
