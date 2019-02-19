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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Generate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate new backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.verificationCodes.generate@.
module Network.Google.Resource.Directory.VerificationCodes.Generate
    (
    -- * REST Resource
      VerificationCodesGenerateResource

    -- * Creating a Request
    , verificationCodesGenerate
    , VerificationCodesGenerate

    -- * Request Lenses
    , vcgUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.generate@ method which the
-- 'VerificationCodesGenerate' request conforms to.
type VerificationCodesGenerateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "generate" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Generate new backup verification codes for the user.
--
-- /See:/ 'verificationCodesGenerate' smart constructor.
newtype VerificationCodesGenerate =
  VerificationCodesGenerate'
    { _vcgUserKey :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerificationCodesGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcgUserKey'
verificationCodesGenerate
    :: Text -- ^ 'vcgUserKey'
    -> VerificationCodesGenerate
verificationCodesGenerate pVcgUserKey_ =
  VerificationCodesGenerate' {_vcgUserKey = pVcgUserKey_}


-- | Email or immutable ID of the user
vcgUserKey :: Lens' VerificationCodesGenerate Text
vcgUserKey
  = lens _vcgUserKey (\ s a -> s{_vcgUserKey = a})

instance GoogleRequest VerificationCodesGenerate
         where
        type Rs VerificationCodesGenerate = ()
        type Scopes VerificationCodesGenerate =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient VerificationCodesGenerate'{..}
          = go _vcgUserKey (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesGenerateResource)
                      mempty
