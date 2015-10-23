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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.verificationCodes.list@.
module Network.Google.Resource.Directory.VerificationCodes.List
    (
    -- * REST Resource
      VerificationCodesListResource

    -- * Creating a Request
    , verificationCodesList
    , VerificationCodesList

    -- * Request Lenses
    , vclUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.list@ method which the
-- 'VerificationCodesList' request conforms to.
type VerificationCodesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] VerificationCodes

-- | Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ 'verificationCodesList' smart constructor.
newtype VerificationCodesList = VerificationCodesList
    { _vclUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclUserKey'
verificationCodesList
    :: Text -- ^ 'vclUserKey'
    -> VerificationCodesList
verificationCodesList pVclUserKey_ =
    VerificationCodesList
    { _vclUserKey = pVclUserKey_
    }

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
vclUserKey :: Lens' VerificationCodesList Text
vclUserKey
  = lens _vclUserKey (\ s a -> s{_vclUserKey = a})

instance GoogleRequest VerificationCodesList where
        type Rs VerificationCodesList = VerificationCodes
        requestClient VerificationCodesList{..}
          = go _vclUserKey (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesListResource)
                      mempty
