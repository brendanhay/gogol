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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enrolls an enterprise with the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.enroll@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
    (
    -- * REST Resource
      EnterprisesEnrollResource

    -- * Creating a Request
    , enterprisesEnroll'
    , EnterprisesEnroll'

    -- * Request Lenses
    , eeToken
    , eePayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.enroll@ method which the
-- 'EnterprisesEnroll'' request conforms to.
type EnterprisesEnrollResource =
     "enterprises" :>
       "enroll" :>
         QueryParam "token" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Enterprise :> Post '[JSON] Enterprise

-- | Enrolls an enterprise with the calling MDM.
--
-- /See:/ 'enterprisesEnroll'' smart constructor.
data EnterprisesEnroll' = EnterprisesEnroll'
    { _eeToken   :: !Text
    , _eePayload :: !Enterprise
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesEnroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeToken'
--
-- * 'eePayload'
enterprisesEnroll'
    :: Text -- ^ 'eeToken'
    -> Enterprise -- ^ 'eePayload'
    -> EnterprisesEnroll'
enterprisesEnroll' pEeToken_ pEePayload_ =
    EnterprisesEnroll'
    { _eeToken = pEeToken_
    , _eePayload = pEePayload_
    }

-- | The token provided by the enterprise to register the MDM.
eeToken :: Lens' EnterprisesEnroll' Text
eeToken = lens _eeToken (\ s a -> s{_eeToken = a})

-- | Multipart request metadata.
eePayload :: Lens' EnterprisesEnroll' Enterprise
eePayload
  = lens _eePayload (\ s a -> s{_eePayload = a})

instance GoogleRequest EnterprisesEnroll' where
        type Rs EnterprisesEnroll' = Enterprise
        requestClient EnterprisesEnroll'{..}
          = go (Just _eeToken) (Just AltJSON) _eePayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesEnrollResource)
                      mempty
