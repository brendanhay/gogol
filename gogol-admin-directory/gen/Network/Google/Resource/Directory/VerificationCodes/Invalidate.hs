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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Invalidate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invalidate the current backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.verificationCodes.invalidate@.
module Network.Google.Resource.Directory.VerificationCodes.Invalidate
    (
    -- * REST Resource
      VerificationCodesInvalidateResource

    -- * Creating a Request
    , verificationCodesInvalidate
    , VerificationCodesInvalidate

    -- * Request Lenses
    , vciUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.invalidate@ method which the
-- 'VerificationCodesInvalidate' request conforms to.
type VerificationCodesInvalidateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "invalidate" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Invalidate the current backup verification codes for the user.
--
-- /See:/ 'verificationCodesInvalidate' smart constructor.
newtype VerificationCodesInvalidate = VerificationCodesInvalidate
    { _vciUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesInvalidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vciUserKey'
verificationCodesInvalidate
    :: Text -- ^ 'vciUserKey'
    -> VerificationCodesInvalidate
verificationCodesInvalidate pVciUserKey_ =
    VerificationCodesInvalidate
    { _vciUserKey = pVciUserKey_
    }

-- | Email or immutable Id of the user
vciUserKey :: Lens' VerificationCodesInvalidate Text
vciUserKey
  = lens _vciUserKey (\ s a -> s{_vciUserKey = a})

instance GoogleRequest VerificationCodesInvalidate
         where
        type Rs VerificationCodesInvalidate = ()
        type Scopes VerificationCodesInvalidate =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient VerificationCodesInvalidate{..}
          = go _vciUserKey (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesInvalidateResource)
                      mempty
